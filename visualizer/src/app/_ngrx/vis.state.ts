import { CRIT_CURR, FIELD, IXAxis, IYAxis, TEMP, ANGLE } from '../_shared/interfaces/axis';
import { IExperiment, IFilterOptions } from '../_shared/interfaces/interfaces';

export interface VisState {
  graphLoaded: boolean;
  figshareId: number;
  doi: string;
  experiments: IExperiment[];
  datasetTitle: string;
  graphTitle: string;
  yAxis: IYAxis;
  logScaleY: boolean;
  logScaleX: boolean;
  highContrastMode: boolean;
  alternatePointsMode: boolean;
  lineTension: boolean;
  pointSize: number;
  dependency: IXAxis;
  constant: IXAxis;
  constantValue: number;
  constantValues: IFilterOptions;
}

const initialConstants = {
  valid_temperatures: [],
  valid_angles: [],
  valid_fields: []
};

export const initialState: VisState = {
  graphLoaded: false,
  figshareId: undefined,
  doi: undefined,
  experiments: [],
  datasetTitle: '',
  graphTitle: '',
  yAxis: CRIT_CURR,
  logScaleY: undefined,
  logScaleX: undefined,
  highContrastMode: false,
  alternatePointsMode: false,
  lineTension: false,
  pointSize: 4,
  dependency: TEMP,
  constant: FIELD,
  constantValue: undefined,
  constantValues: {
    temperature_dependence: initialConstants,
    angle_dependence: initialConstants,
    field_dependence: initialConstants
  }
};
