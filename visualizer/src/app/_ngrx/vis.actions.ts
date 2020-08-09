import { Action } from '@ngrx/store';
import { IXAxis, IYAxis } from '../_shared/interfaces/axis';
import { IExperiment, IMetadata } from '../_shared/interfaces/interfaces';

export enum ActionTypes {
  RequestInitialGraphData = '[InitialGraphData] request',
  SetInitialGraphData = '[InitialGraphData] set',
  SetGraphData = '[GraphData] set',
  ChangeDependency = '[Dependency] updated (effects)',
  SetDependency = '[Dependency] set',
  ChangeConstant = '[Constant] change (effects)',
  SetConstant = '[Constant] set',
  ChangeConstantValue = '[ConstantValue] updated (effects)',
  SetConstantValue = '[ConstantValue] set',
  SetMetadata = '[Metadata] set',
  SetYAxis = '[YAxis] set',
  YScaleSet = '[YScale] set',
  XScaleSet = '[XScale] set',
  HighContrastSet = '[HighContrast] set',
  AlternatePointsSet = '[AlternatePoints] set',
  LineTensionSet = '[LineTension] set',
  PointSizeSet = '[PointSize] set',
  GraphNotLoadedSet = '[GraphNotLoaded] set'
}

interface GraphDataSetPayload { experiments: IExperiment[]; graphTitle: string; }

export class RequestInitialGraphDataAction implements Action {
  readonly type = ActionTypes.RequestInitialGraphData;
  constructor(public id: number) {}
}

export class SetInitialGraphDataAction implements Action {
  readonly type = ActionTypes.SetInitialGraphData;
  constructor(public payload: GraphDataSetPayload) {}
}

export class SetGraphDataAction implements Action {
  readonly type = ActionTypes.SetGraphData;
  constructor(public payload: GraphDataSetPayload) {}
}

export class SetMetadataAction implements Action {
  readonly type = ActionTypes.SetMetadata;
  constructor(public metadata: IMetadata) {}
}

export class ChangeDependencyAction implements Action {
  readonly type = ActionTypes.ChangeDependency;
  constructor(public dependency: IXAxis) {}
}

export class SetDependencyAction implements Action {
  readonly type = ActionTypes.SetDependency;
  constructor(public dependency: IXAxis) {}
}

export class ChangeConstantAction implements Action {
 readonly type = ActionTypes.ChangeConstant;
 constructor(public constant: IXAxis) {}
}

export class SetConstantAction implements Action {
  readonly type = ActionTypes.SetConstant;
  constructor(public constant: IXAxis) {}
}

export class ChangeConstantValueAction implements Action {
 readonly type = ActionTypes.ChangeConstantValue;
 constructor(public constantValue: number) {}
}

export class SetConstantValueAction implements Action {
  readonly type = ActionTypes.SetConstantValue;
  constructor(public constantValue: number) {}
}

export class SetYAxisAction implements Action {
  readonly type = ActionTypes.SetYAxis;
  constructor(public yAxis: IYAxis) {}
}

export class SetYScaleAction implements Action {
  readonly type = ActionTypes.YScaleSet;
  constructor(public logYScale: boolean) { }
}

export class SetXScaleAction implements Action {
  readonly type = ActionTypes.XScaleSet;
  constructor(public logXScale: boolean) { }
}

export class SetHighContrastAction implements Action {
  readonly type = ActionTypes.HighContrastSet;
  constructor(public highContrast: boolean) { }
}

export class SetAlternatePointsAction implements Action {
  readonly type = ActionTypes.AlternatePointsSet;
  constructor(public alternatePoints: boolean) { }
}

export class SetLineTensionAction implements Action {
  readonly type = ActionTypes.LineTensionSet;
  constructor(public lineTension: boolean) { }
}

export class SetPointSizeAction implements Action {
  readonly type = ActionTypes.PointSizeSet;
  constructor(public pointSize: number) { }
}

export class SetGraphNotLoadedAction implements Action {
  readonly type = ActionTypes.GraphNotLoadedSet;
  constructor() {}
}

export type VisActions =
  RequestInitialGraphDataAction |
  SetInitialGraphDataAction |
  SetGraphDataAction |
  ChangeDependencyAction |
  SetDependencyAction |
  ChangeConstantAction |
  SetConstantAction |
  ChangeConstantValueAction |
  SetConstantValueAction |
  SetYAxisAction |
  SetMetadataAction |
  SetYScaleAction |
  SetXScaleAction |
  SetHighContrastAction |
  SetAlternatePointsAction |
  SetLineTensionAction |
  SetPointSizeAction |
  SetGraphNotLoadedAction;
