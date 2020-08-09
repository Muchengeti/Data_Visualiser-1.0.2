export interface IDatasetMetadata {
  figshare_id: number;
  title: string;
  doi: string;
  url_api: string;
  url_public: string;
  thumbnail: string;
  defined_type: number;
  published_date: string;
  cached: boolean;
}

export interface IExperiment {
  rows: IRow[];
  set_field: number;
  set_temperature: number;
  set_angle: number;
}

export interface IRow {
  temperature: number;
  field: number;
  angle: number;
  icw: number;
  ic: number;
  n: number;
  v0: number;
  v1: number;
  hall_field: number;
  hall_angle: number;
}

export interface IFilterOptions {
  temperature_dependence: IValidConstant;
  angle_dependence: IValidConstant;
  field_dependence: IValidConstant;
}

export interface IValidConstant {
  valid_temperatures: number[];
  valid_angles: number[];
  valid_fields: number[];
}

export interface IDatasets {
  datasets: IDatasetMetadata[];
}

export interface IFilteredDataset {
  filtered_experiments: IExperiment[];
}

export interface IMetadata {
  dataset_meta: IDatasetMetadata;
  filters: IFilterOptions;
}

export interface IUnmappedExperiment {
  rows: Array<number[]>;
  row_header: string[];
  set_field: number;
  set_temperature: number;
  set_angle: number;
}

export interface IUnmappedExperiments {
  filtered_experiments: IUnmappedExperiment[];
}
