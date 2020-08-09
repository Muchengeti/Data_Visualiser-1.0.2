import { map } from 'rxjs/operators';
import { Injectable } from '@angular/core';
import {
  IDatasetMetadata,
  IDatasets,
  IExperiment,
  IMetadata,
  IRow,
  IUnmappedExperiments
} from '../interfaces/interfaces';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import { environment } from '../../../environments/environment';

const httpOptions = {
  headers: new HttpHeaders({
    'Content-Type':  'application/json',
    'Accept' : 'application/json'
  })
};

@Injectable()
export class FigshareService {
  constructor(private _http: HttpClient) {}

  public getMetadata(id: number): Observable<IMetadata> {
    const requestUrl = environment.backendUrl + '/datasets/' + id + '/metadata';
    return this._http.get<IMetadata>(requestUrl, httpOptions);
  }

  public getListOfDatasets(): Observable<IDatasetMetadata[]> {
    const requestUrl = environment.backendUrl + '/datasets';
    return this._http.get<IDatasets>(requestUrl, httpOptions).pipe(
      map(data => data.datasets));
  }

  public getExperiments(id: number, dependence: string, constant: string, constantValue: number): Observable<IExperiment[]> {
    const requestUrl = environment.backendUrl + '/datasets/' + id + '?' + constant + '=' + constantValue + '&dependence=' + dependence;
    return this._http.get<IUnmappedExperiments>(requestUrl, httpOptions)
      .pipe(
        map(exp => this.mapExperiments(exp))
      );
  }

  public mapExperiments(unmappedExperiments: IUnmappedExperiments): IExperiment[] {
    const mappedExperiments = unmappedExperiments.filtered_experiments.map(exp => {
      const {rows, row_header, set_field, set_temperature, set_angle} = exp;
      const mapped_rows: IRow[] = rows.map(row => {
        const mapped_row: IRow = {
          temperature: null,
          field: null,
          angle: null,
          icw: null,
          ic: null,
          n: null,
          v0: null,
          v1: null,
          hall_field: null,
          hall_angle: null
        };
        row_header.forEach((value, index ) => {
          mapped_row[value] = row[index];
        });
        return mapped_row;
      });

      return {
        rows: mapped_rows,
        set_field,
        set_temperature,
        set_angle
      };
    });
    return this.removeEmptyExperiments(mappedExperiments);
  }

  public removeEmptyExperiments(experiments) {
    return experiments.filter( exp => exp.rows.filter( row => row.ic || row.icw || row.n ).length > 0 );
  }
}
