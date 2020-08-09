interface IAxis {
  variable: string;
  axisName: string;
  unit: string;
  bracketedUnit: string;
  csvName: string;
}

export interface IXAxis extends IAxis {
  raw: 'temperature' | 'field' | 'angle';
  dependence: 'temperature_dependence' | 'field_dependence' | 'angle_dependence';
  rowKey: 'set_temperature' | 'set_field' | 'set_angle';
  filterKey: 'valid_temperatures' | 'valid_angles' | 'valid_fields';
  fullName: string;
}

export interface IYAxis extends IAxis {
  rowKey: 'ic' | 'icw' | 'n';
}

export const TEMP: IXAxis = {
  raw: 'temperature',
  dependence: 'temperature_dependence',
  rowKey: 'set_temperature',
  filterKey: 'valid_temperatures',
  variable: '𝘛',
  fullName: 'Temperature',
  csvName: 'Temperature',
  axisName: 'Temperature',
  unit: 'K',
  bracketedUnit: '(K)'
};

export const FIELD: IXAxis = {
  raw: 'field',
  dependence: 'field_dependence',
  rowKey: 'set_field',
  filterKey: 'valid_fields' ,
  variable: 'μ₀𝘏', // 😅
  fullName: 'Field',
  csvName: 'Field',
  axisName: 'Applied field',
  unit: 'T',
  bracketedUnit: '(T)'
};

export const ANGLE: IXAxis = {
  raw: 'angle',
  dependence: 'angle_dependence',
  rowKey: 'set_angle',
  filterKey: 'valid_angles',
  variable: 'θ',
  fullName: 'Angle',
  csvName: 'Field angle',
  axisName: 'Applied field angle',
  unit: '°',
  bracketedUnit: '(°)'
};

export const CRIT_CURR: IYAxis = {
  rowKey: 'ic',
  variable: '𝘐c',
  axisName: 'Critical current',
  csvName: 'Critical current',
  unit: 'A',
  bracketedUnit: '(A)'
};

export const CRIT_CURR_WIDTH: IYAxis = {
  rowKey: 'icw',
  variable: '𝘐c/𝘸',
  axisName: 'Critical current per cm width',
  csvName: 'Critical current per cm width',
  unit: 'A/cm',
  bracketedUnit: '(A/cm)'
};

export const N_VALUE: IYAxis = {
  rowKey: 'n',
  variable: '𝘯-value',
  axisName: '',
  csvName: 'n-value',
  unit: '',
  bracketedUnit: ''
};

export const ALL_Y_AXIS: IYAxis[] = [CRIT_CURR, CRIT_CURR_WIDTH, N_VALUE];
export const ALL_X_AXIS: IXAxis[] = [TEMP, FIELD, ANGLE];
