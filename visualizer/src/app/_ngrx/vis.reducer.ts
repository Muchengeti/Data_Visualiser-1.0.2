import {
  ActionTypes,
  SetGraphDataAction,
  VisActions,
  SetMetadataAction,
  SetXScaleAction,
  SetYScaleAction,
  SetHighContrastAction,
  SetAlternatePointsAction,
  SetDependencyAction,
  SetConstantAction,
  SetConstantValueAction,
  SetYAxisAction,
  SetInitialGraphDataAction,
  SetLineTensionAction, SetPointSizeAction
} from './vis.actions';
import { initialState } from './vis.state';
import { CRIT_CURR, FIELD, TEMP , ANGLE} from '../_shared/interfaces/axis';


export function visReducer(state = initialState, action: VisActions) {
  switch (action.type) {
    case ActionTypes.SetGraphData:
      return {
        ...state,
        graphTitle: (<SetGraphDataAction>action).payload.graphTitle,
        experiments: (<SetGraphDataAction>action).payload.experiments,
        graphLoaded: true
      };
    case ActionTypes.SetInitialGraphData:
      return {
        ...state,
        yAxis: CRIT_CURR,
        dependency: TEMP,
        constant: FIELD,
        graphTitle: (<SetInitialGraphDataAction>action).payload.graphTitle,
        experiments: (<SetInitialGraphDataAction>action).payload.experiments,
        graphLoaded: true
      };
    case ActionTypes.GraphNotLoadedSet:
      return {
        ...state,
        graphLoaded: false
      };
    case ActionTypes.SetMetadata:
      return {
        ...state,
        figshareId: (<SetMetadataAction>action).metadata.dataset_meta.figshare_id,
        doi: (<SetMetadataAction>action).metadata.dataset_meta.doi,
        datasetTitle: formatTitle((<SetMetadataAction>action).metadata.dataset_meta.title),
        constantValues: (<SetMetadataAction>action).metadata.filters
      };
    case ActionTypes.SetDependency:
      return {
        ...state,
        dependency: (<SetDependencyAction>action).dependency
      };
    case ActionTypes.SetConstant:
      return {
        ...state,
        constant: (<SetConstantAction>action).constant
      };
    case ActionTypes.SetConstantValue:
      return {
        ...state,
        constantValue: (<SetConstantValueAction>action).constantValue
      };
    case ActionTypes.SetYAxis:
      return {
        ...state,
        yAxis: (<SetYAxisAction>action).yAxis
      };
    case ActionTypes.XScaleSet:
      return {
        ...state,
        logScaleX: (<SetXScaleAction>action).logXScale
      };
    case ActionTypes.YScaleSet:
      return {
        ...state,
        logScaleY: (<SetYScaleAction>action).logYScale
      };
    case ActionTypes.HighContrastSet:
      return {
        ...state,
        highContrastMode: (<SetHighContrastAction>action).highContrast
      };
    case ActionTypes.AlternatePointsSet:
      return {
        ...state,
        alternatePointsMode: (<SetAlternatePointsAction>action).alternatePoints
      };
    case ActionTypes.LineTensionSet:
      return {
        ...state,
        lineTension: (<SetLineTensionAction>action).lineTension
      };
    case ActionTypes.PointSizeSet:
      return {
        ...state,
        pointSize: (<SetPointSizeAction>action).pointSize
      };
    default:
      return state;
  }
}

function formatTitle(title: string): string {
  return title
    .replace('Critical current characterisation of', '')
    .replace('superconducting wire', '');
}
