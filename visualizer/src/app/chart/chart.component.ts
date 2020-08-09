import { Component, ViewChild, ChangeDetectorRef, AfterViewChecked, OnDestroy } from '@angular/core';
import { FigshareService } from '../_shared/services/figshare.service';
import { ActivatedRoute } from '@angular/router';
import { Router } from '@angular/router';
import {
  ALL_X_AXIS,
  ALL_Y_AXIS,
  ANGLE,
  CRIT_CURR,
  CRIT_CURR_WIDTH,
  FIELD,
  IXAxis,
  IYAxis,
  N_VALUE,
  TEMP,
} from '../_shared/interfaces/axis';
import { select, Store } from '@ngrx/store';
import { VisState } from '../_ngrx/vis.state';
import { Subject } from 'rxjs';
import {
  RequestInitialGraphDataAction,
  SetHighContrastAction,
  SetXScaleAction,
  SetYScaleAction,
  ChangeConstantValueAction,
  ChangeDependencyAction,
  ChangeConstantAction,
  SetYAxisAction,
  SetGraphNotLoadedAction,
  SetAlternatePointsAction,
  SetLineTensionAction,
  SetPointSizeAction
} from '../_ngrx/vis.actions';
import { takeUntil } from 'rxjs/operators';

export type AxisScales = 'Logarithmic' | 'Linear';
export type ContrastOptions = 'Gradient' | 'High Contrast';
export type PointOptions = 'brightness_1' | 'category';
export type LineCurveOptions = 'Curved' | 'Straight';

const ALL_AXIS_SCALE: AxisScales[] = ['Linear', 'Logarithmic'];
const ALL_CONTRAST_OPTIONS: ContrastOptions[] = ['Gradient', 'High Contrast'];
const ALL_POINT_OPTIONS: PointOptions[] = ['brightness_1', 'category'];
const ALL_LINE_CURVE_OPTIONS: LineCurveOptions[] = ['Curved', 'Straight'];


@Component({
  selector: 'vis-chart',
  templateUrl: './chart.component.html',
  styleUrls: ['./chart.component.scss']
})
export class ChartComponent implements AfterViewChecked, OnDestroy {

  @ViewChild('baseChart') baseChart;

  public linkMessage = 'View this dataset on figshare.';
  public ccLicense = 'This work is licensed under a Creative Commons Attribution 4.0 International License.';

  // constants
  public SCALES: AxisScales[] = ALL_AXIS_SCALE;
  public CONTRAST: ContrastOptions[] = ALL_CONTRAST_OPTIONS;
  public POINTS: PointOptions[] = ALL_POINT_OPTIONS;
  public Y_VALS: IYAxis[] = ALL_Y_AXIS;
  public DEPENDENCY_VALUES: IXAxis[] = ALL_X_AXIS;
  public LINES: LineCurveOptions[] = ALL_LINE_CURVE_OPTIONS;

  public id: number;
  public datasetTitle = null;
  public doi = null;
  public graphLoaded = false;

  public useLogScaleY = true;
  public useLogScaleX = false;
  // public useLogScaleY: boolean; the defaults set above are immediately overriden so can potentially set like this - overidden below in store constructor
  // public useLogScaleX: boolean;
  public useHighContrast = false;
  public alternatePoints = false;
  public yAxis: IYAxis = CRIT_CURR;
  public dependency: IXAxis = ANGLE; // x-axis, eg: angle
  public constant: IXAxis = FIELD; // requested filter + value, eg: field = 0.015T
  public constantValue: number;
  public currentConstantValues: number[] = [];
  public lineTension: boolean;
  public csv;
  public graphTitle;
  public pointSize = 3;
  private onDestroy: Subject<boolean> = new Subject<boolean>();

  public doiButton = 'COPY DOI';
  public href = '';
  public preHref = '<iframe src="http://localhost:4200';
  public postHref = '" width="1200" height="600" sandbox="allow-same-origin allow-scripts allow-popups allow-forms"/>';
  public fullHref = '';
  public firstParam: string;
  public secondParam: string;
  public thirdParam: string;
  public fourthParam: string;
  constructor(
    private _figshareService: FigshareService,
    private _route: ActivatedRoute,
    private _cdr: ChangeDetectorRef,
    private _store: Store<VisState>,
    private router: Router
  ) {
    this.id = +this._route.snapshot.params['id'];

    this.href = this.router.url;
    
    this.fullHref = this.preHref + this.href + this.postHref;

    this.firstParam = this._route.snapshot.queryParamMap.get('IndependentVarScale');
    this.secondParam= this._route.snapshot.queryParamMap.get('DependentVarScale');
    this.thirdParam= this._route.snapshot.queryParamMap.get('IndependentVar');
    this.fourthParam= this._route.snapshot.queryParamMap.get('DependentVar');

    this._store.dispatch(new RequestInitialGraphDataAction(this.id));

    this._store.pipe(select('vis'), takeUntil(this.onDestroy)).subscribe((state: VisState) => {
      const {graphTitle, datasetTitle, dependency, constant, constantValue, figshareId,
        graphLoaded, doi, constantValues, lineTension, logScaleX,
        logScaleY, pointSize, alternatePointsMode, highContrastMode, yAxis} = state;
      this.csv = this.createCSV(state);
      this.graphTitle = graphTitle;
      this.datasetTitle = datasetTitle;
      this.dependency = dependency;
      this.constant = constant;
      this.constantValue = constantValue;
      this.lineTension = lineTension;
      this.useLogScaleX = logScaleX;
      this.useLogScaleY = logScaleY;
      this.pointSize = pointSize;
      this.alternatePoints = alternatePointsMode;
      this.useHighContrast = highContrastMode;
      this.yAxis = yAxis;
      if (figshareId === this.id) {
        this.graphLoaded = graphLoaded;
      }
      this.doi = 'https://doi.org/' + doi;
      this.currentConstantValues = constantValues[this.dependency.dependence][this.constant.filterKey];
    });
  }

  ngOnDestroy() {
    this.onDestroy.next(true);
    this.onDestroy.unsubscribe();
    this._store.dispatch(new SetGraphNotLoadedAction());
  }

  public ngAfterViewChecked() {
    this._cdr.detectChanges();
  }

  public getFigshareURL() {
    return 'https://figshare.com/articles/' + this.datasetTitle + '/' + this.id;
  }

  public setDependency(event) {
    this._store.dispatch(new ChangeDependencyAction(event.value));
  }
  public setInitDependency(dep: IXAxis) {
    this._store.dispatch(new ChangeDependencyAction(dep));
  }

  public setConstant(event) {
    this._store.dispatch(new ChangeConstantAction(event.value));
  }

  public constantValueSet() {
    this._store.dispatch(new ChangeConstantValueAction(this.constantValue));
  }

  public setYAxis(event) {
    this._store.dispatch(new SetYAxisAction(event.value));
  }

  public getYScale() {
    // console.log("getYScale: " + this.useLogScaleX)
    return this.useLogScaleY ? 'Logarithmic' : 'Linear';
  }

  public getXScale() {
    // console.log("getXScale: " + this.useLogScaleX)
    return this.useLogScaleX ? 'Logarithmic' : 'Linear';
  }

  public setYScale() {
    // console.log("setYScale: " + !this.useLogScaleX)
    this._store.dispatch(new SetYScaleAction(!this.useLogScaleY));
  }

  public setXScale() {
    // console.log("setXScale: " + !this.useLogScaleX)
    this._store.dispatch(new SetXScaleAction(!this.useLogScaleX));
  }

  public setContrast() {
    this._store.dispatch(new SetHighContrastAction(!this.useHighContrast));
  }

  public setPoints() {
    this._store.dispatch(new SetAlternatePointsAction(!this.alternatePoints));
  }

  public setLineTension() {
    this._store.dispatch(new SetLineTensionAction(!this.lineTension));
  }
  public getLineTension() {
    return this.lineTension ? 'Straight' : 'Curved';
  }

  public setPointSize(event) {
    this._store.dispatch(new SetPointSizeAction(event.value));
  }
  public getContrast() {
    return this.useHighContrast ? 'High Contrast' : 'Gradient';
  }

  public getPoints() {
    return this.alternatePoints ? 'category' : 'brightness_1';
  }

  public getContrastImageName(contrastMode: string) {
    return contrastMode === 'Gradient' ? 'gradient.jpg' : 'high-contrast.jpg';
  }

  public getLineImageName(lineMode: string) {
    return lineMode === 'Curved' ? 'curved.png' : 'straight.png';
  }

  public print() {
    let popupWindow;
    const image = this.baseChart.exportPNG();
    popupWindow = window
      .open('', '_blank', 'width=1920,height=1080,scrollbars=no,menubar=no,toolbar=no,location=no,status=no,titlebar=no');

    if (popupWindow) {
      popupWindow.document.open();
      popupWindow.document.write(
        '<html><head><title>' +
        this.datasetTitle +
        '</title></head><body onload="window.print(); window.close();"><img src="'
        + image +
        '" style="max-width: 100%; max-height:100%;"></html>');
      popupWindow.document.close();
    }
  }

  public displayedLineType(dependency: IXAxis, constant: IXAxis): IXAxis {
    const displayed = this.DEPENDENCY_VALUES.filter(val => val !== dependency && val !== constant);
    return displayed[0];
  }

  public mapXandYPoints(xVals, yVals) {
    const xyPoints = xVals.map( (e, i) => [e, yVals[i]] ).map( (xs) =>  {
      return { x: xs[0], y: xs[1] };
    } );
    return xyPoints.sort((a, b) => (a.x > b.x) ? 1 : ((b.x > a.x) ? -1 : 0));
  }

  public createCSV(state: VisState) {
    const { experiments } = state;
    const lines = this.mapExperimentsToCSVLines(experiments);

    // workaround for microsoft excel not using utf-8 encoding so the degree gets butchered
    // when using the bracketedUnit
    const replacedAngle = {...ANGLE, bracketedUnit: '(deg)'};
    const headerLine = [TEMP, FIELD, replacedAngle, CRIT_CURR, CRIT_CURR_WIDTH, N_VALUE]
      .map( h => h.csvName + ' ' + h.bracketedUnit )
      .join(',');
    return headerLine + '\n' + lines.join('\n');
  }

  public mapExperimentsToCSVLines(experiments) {
    return experiments.reduce((acc, x) => {
      return acc.concat(x.rows.map( r => {
        return [r.temperature, r.field, r.angle, r.ic, r.icw, r.n]
          .map(v => v ? v : '-')
          .join(',');
      }));
    }, []);
  }

  public downloadCSV() {
    const link = document.createElement('a');
    link.setAttribute('href', 'data:text/csv;charset=utf-8,' + encodeURI(this.csv));
    link.setAttribute('download', this.graphTitle + '.csv');
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  }

  public downloadPNG() {
    const exported = this.baseChart.exportPNG();
    const link = document.createElement('a');
    link.setAttribute('href', exported);
    link.setAttribute('download', this.datasetTitle.trim() + '.png');
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  }

  public copyDOI() {
    const selBox = document.createElement('textarea');
    selBox.style.position = 'fixed';
    selBox.style.left = '0';
    selBox.style.top = '0';
    selBox.style.opacity = '0';
    selBox.value = this.doi;
    document.body.appendChild(selBox);
    selBox.focus();
    selBox.select();
    document.execCommand('copy');
    document.body.removeChild(selBox);
    // this.doiButton = 'Copied';
  }

  copyMessage(){
    const selBox = document.createElement('textarea');
    selBox.style.position = 'fixed';
    selBox.style.left = '0';
    selBox.style.top = '0';
    selBox.style.opacity = '0';
    selBox.value = this.fullHref;
    document.body.appendChild(selBox);
    selBox.focus();
    selBox.select();
    document.execCommand('copy');
    document.body.removeChild(selBox);
  }
}
