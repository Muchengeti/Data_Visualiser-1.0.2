import { Injectable } from '@angular/core';
import { Actions, Effect, ofType } from '@ngrx/effects';
import { FigshareService } from '../_shared/services/figshare.service';
import {
  RequestInitialGraphDataAction,
  SetGraphDataAction,
  ActionTypes,
  ChangeDependencyAction,
  ChangeConstantValueAction,
  SetMetadataAction,
  ChangeConstantAction,
  SetConstantValueAction,
  SetConstantAction, SetDependencyAction, SetInitialGraphDataAction
} from './vis.actions';
import { switchMap, tap, withLatestFrom } from 'rxjs/operators';
import { ALL_X_AXIS, ANGLE, FIELD, IXAxis, TEMP } from '../_shared/interfaces/axis';
import { IExperiment, IMetadata } from '../_shared/interfaces/interfaces';
import { of } from 'rxjs';
import { initialState, VisState } from './vis.state';
import { select, Store } from '@ngrx/store';

@Injectable()
export class VisEffects {
  @Effect()
  initialGraphRequest = this.actions$
    .pipe(
      ofType<RequestInitialGraphDataAction>(ActionTypes.RequestInitialGraphData),
      switchMap(action => {
        return this.figshareService.getMetadata((<RequestInitialGraphDataAction>action).id)
          .pipe(
            switchMap((metadata: IMetadata) => {
              const initialDependence = initialState.dependency;
              const initialConstant = this.defaultConstant(initialDependence);
              const constantValue = this.defaultConstantValue(metadata.filters, initialDependence, initialConstant);
              this.store.dispatch(new SetMetadataAction(metadata));
              this.store.dispatch(new SetConstantValueAction(constantValue));
              return this.figshareService.getExperiments(
                metadata.dataset_meta.figshare_id, 'temperature', initialConstant.rowKey, constantValue)
                .pipe(
                  switchMap((experiments: IExperiment[]) => {
                    const graphTitle = this.makeGraphTitle(constantValue, initialConstant, initialDependence);
                    return of(new SetInitialGraphDataAction({experiments, graphTitle}));
                  })
                );
            })
          );
      })
    );

  @Effect()
  dependencyChanged$ = this.actions$
    .pipe(
      ofType<ChangeDependencyAction>(ActionTypes.ChangeDependency),
      withLatestFrom(this.store.pipe(select('vis'))),
      switchMap( ([action, state]) => {
        const { figshareId, constantValues } = state;
        const newDependency = (<ChangeDependencyAction>action).dependency;
        const newConstant = this.defaultConstant(newDependency);
        const constantValue = this.defaultConstantValue(constantValues, newDependency, newConstant);
        return this.figshareService.getExperiments(
          figshareId, newDependency.raw, newConstant.rowKey, constantValue)
          .pipe(
            switchMap((experiments: IExperiment[]) => {
              const graphTitle = this.makeGraphTitle(constantValue, newConstant, newDependency);
              this.store.dispatch(new SetDependencyAction(newDependency));
              this.store.dispatch(new SetConstantValueAction(constantValue));
              this.store.dispatch(new SetConstantAction(newConstant));
              return of(new SetGraphDataAction({experiments, graphTitle}));
            })
          );
      })
    );

  @Effect()
  constantChanged$ = this.actions$
    .pipe(
      ofType<ChangeConstantAction>(ActionTypes.ChangeConstant),
      tap(action => this.store.dispatch(new SetConstantAction((<ChangeConstantAction>action).constant))),
      withLatestFrom(this.store.pipe(select('vis'))),
      switchMap(([action, state]) => {
        const { dependency, constantValues, figshareId } = state;
        const newConstant = (<ChangeConstantAction>action).constant;
        const constantValue = this.defaultConstantValue(constantValues, dependency, newConstant);
        this.store.dispatch(new SetConstantValueAction(constantValue));
        return this.figshareService.getExperiments(
          figshareId, dependency.raw, newConstant.rowKey, constantValue)
          .pipe(
            switchMap((experiments: IExperiment[]) => {
              const graphTitle = this.makeGraphTitle(constantValue, newConstant, dependency);
              return of(new SetGraphDataAction({experiments, graphTitle}));
            })
          );
      })
    );

  @Effect()
  constantValueChanged$ = this.actions$
    .pipe(
      ofType<ChangeConstantValueAction>(ActionTypes.ChangeConstantValue),
      tap(action => this.store.dispatch(new SetConstantValueAction((<ChangeConstantValueAction>action).constantValue))),
      withLatestFrom(this.store.pipe(select('vis'))),
      switchMap(([action, state]) => {
        const { dependency, figshareId, constant } = state;
        return this.figshareService.getExperiments(
          figshareId, dependency.raw, constant.rowKey, (<ChangeConstantValueAction>action).constantValue)
          .pipe(
            switchMap((experiments: IExperiment[]) => {
              const graphTitle = this.makeGraphTitle((<ChangeConstantValueAction>action).constantValue, constant, dependency);
              return of(new SetGraphDataAction({experiments, graphTitle}));
            })
          );
      })
    );

  constructor(private actions$: Actions, private figshareService: FigshareService, private store: Store<VisState>) {}

  public makeGraphTitle(constantValue, constant: IXAxis, dependence: IXAxis) {
    return constantValue + constant.unit + ' ' + dependence.fullName + ' Dependence';
  }

  public defaultConstant(dependence: IXAxis) {
    // As per client preference
    if (dependence === TEMP) {
      return FIELD;
    } else if (dependence === FIELD) {
      return ANGLE;
    } else if (dependence === ANGLE) {
      return TEMP;
    } else {
      return (dependence === ALL_X_AXIS[2]) ? ALL_X_AXIS[1] : ALL_X_AXIS[2];
    }
  }

  public defaultConstantValue(filters, dependence: IXAxis, constant: IXAxis) {
    if (dependence === TEMP) {
      // Temp, for both constants default should be 0
      return this.findConstantOrFirst(filters, dependence, constant, 0);
    } else if (dependence === FIELD) {
      // Field, default for temp const = 77.5K & default const angle = 0 deg
      if (constant === TEMP) {
        return this.findConstantOrFirst(filters, dependence, constant, 77.5);
      } else { // Constant must be angle
        return this.findConstantOrFirst(filters, dependence, constant, 0);
      }
    } else if (dependence === ANGLE) {
      // Angle, default for temp const = 77.5K & default const field = 1T
      if (constant === TEMP) {
        return this.findConstantOrFirst(filters, dependence, constant, 77.5);
      } else { // Constant must be field
        return this.findConstantOrFirst(filters, dependence, constant, 1);
      }
    } else {
      // Should never be here
      return filters[dependence.dependence][constant.filterKey][0];
    }
  }

  public findConstantOrFirst(filters, dependence: IXAxis, constant: IXAxis, desiredConstant) {
    const constantFilters = filters[dependence.dependence][constant.filterKey];
    return constantFilters[constantFilters.indexOf(desiredConstant)] || constantFilters[0];
  }
}
