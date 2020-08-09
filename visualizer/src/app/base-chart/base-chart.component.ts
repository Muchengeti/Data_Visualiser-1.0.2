import { AfterViewInit, Component, HostListener, OnDestroy } from '@angular/core';
import * as Chart from 'chart.js';
import 'rxjs-compat/add/observable/of';
import {ChartDataSets} from 'chart.js';
import { VisState } from '../_ngrx/vis.state';
import { select, Store } from '@ngrx/store';
import { IXAxis, TEMP, FIELD, ANGLE, IYAxis, CRIT_CURR_WIDTH, CRIT_CURR, N_VALUE } from '../_shared/interfaces/axis';
import { takeUntil } from 'rxjs/operators';
import { Subject } from 'rxjs';
import { ActivatedRoute } from '@angular/router';
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
@Component({
  selector: 'vis-base-chart',
  templateUrl: './base-chart.component.html',
  styleUrls: ['./base-chart.component.scss']
})
export class BaseChartComponent implements AfterViewInit, OnDestroy {

  public id: number;
  public windowWidth: number;

  public datasets: ChartDataSets[];
  public title: string;
  public xAxisLabel: string;
  public yAxisLabel: string;
  public logScaleY = false;
  public logScaleX = false;
  public highContrastMode = false;
  public alternatePointMode = false;
  public Yaxis: IYAxis;
  public dependency: IXAxis;
  private DEPENDENCY_VALUES = [TEMP, FIELD, ANGLE];
  public lineTension = false;
  public pointSize = 3;
  public firstParam: string;
  public secondParam: string;
  public thirdParam: string;
  public fourthParam: string;
  public fifthParam: string

  private rValues = [178, 44, 60, 203, 88, 84, 136, 96, 158, 166, 77, 108, 182, 116];
  private gValues = [51, 50, 55, 91, 162, 73, 91, 116, 149, 87, 160, 131, 197, 200];
  private bValues = [76, 63, 186, 200, 97, 118, 186, 115, 64, 107, 171, 199, 107, 138];

  private pointStyles = [
    'circle',  'rect',  'triangle', 'cross', 'crossRot', 'rectRot', 'star'
  ];

  private chart: Chart;

  private tickStyle = {
    autoSkip: false,
    fontSize: 16,
    fontColor: '#383838',
  };
  private onDestroy: Subject<boolean> = new Subject<boolean>();

  constructor(private _store: Store<VisState>, private _route: ActivatedRoute) {
    this.id = this._route.snapshot.params['id'];
  }

  ngOnInit() {
    this.firstParam = this._route.snapshot.queryParamMap.get('indepscale');
    this.secondParam= this._route.snapshot.queryParamMap.get('depscale');
    this.thirdParam= this._route.snapshot.queryParamMap.get('dependency');
    this.fourthParam= this._route.snapshot.queryParamMap.get('constant');
    this.fifthParam = this._route.snapshot.queryParamMap.get('yaxis');
  }

  ngOnDestroy() {
    this.onDestroy.next(true);
    this.onDestroy.unsubscribe();
  }

  @HostListener('window:resize')
  onResize() {
    this.windowWidth = window.innerWidth;

    const currentPosition = this.chart.config.options.legend.position;
    const newPosition = this.getLegendPosition();

    if (currentPosition !== newPosition) {
      this.updateChartWidth();
    }
  }

  ngAfterViewInit(): void {
    this.windowWidth = window.innerWidth;
    this._store.pipe(select('vis'), takeUntil(this.onDestroy))
      .subscribe((state: VisState) => {
        const {graphTitle, dependency, yAxis, highContrastMode, logScaleX, logScaleY, alternatePointsMode, lineTension, pointSize} = state;
        this.highContrastMode = highContrastMode;
        this.alternatePointMode = alternatePointsMode;
        this.datasets = this.mapExperimentsToChartData(state);
        this.title = graphTitle;
        this.Yaxis = yAxis;
        this.xAxisLabel = dependency.axisName + ' ' + dependency.variable + ' ' + dependency.bracketedUnit;
        this.yAxisLabel = yAxis.axisName + ' ' + yAxis.variable + ' ' + yAxis.bracketedUnit;
        this.logScaleX = logScaleX;
        this.logScaleY = logScaleY;
        this.dependency = dependency;
        this.lineTension = lineTension;
        this.pointSize = pointSize;
        this.updateChartAndMetaData();
    });

    const canvas: any = document.getElementById('chart-canvas');
    const ctx = canvas.getContext('2d');
    this.chart = new Chart(ctx, {
      type: 'line',
      data: { datasets: this.datasets},
      plugins: [{ beforeDraw: this.drawOnCanvas }],
      options: {
        responsive: true,
        maintainAspectRatio: false,
        title: { display: true, position: 'top', text: this.title, fontSize: 17},
        legend: { position: this.getLegendPosition(), reverse: true,
          labels: {
            usePointStyle: true
          }
        },
        layout: { padding: { top: 0 } },
        hover: { mode: 'nearest' },
        elements: {
          line: {
            tension: this.lineTensionBoolean()
          },
          point: {
            radius: this.pointSize,
            hoverRadius: this.pointSize + 1
          }
        },
        tooltips: {
          callbacks: {
            title: ( () => ''),
            beforeLabel: (item, data) => this.formatTopOfToolTip(item, data),
            label: (tooltipItems) => this.formatBottomOfToolTip(tooltipItems),
          }
        },
        scales: {
          display: true,
          yAxes: [{
            type: 'linear',
            ticks: this.tickStyle,
            scaleLabel: { labelString: this.yAxisLabel, display: true, fontSize: 18},
            gridLines: { color: '#BEBEBE' }
          }],
          xAxes: [{
            type: 'linear',
            ticks: this.tickOptions(),
            scaleLabel: { labelString: this.xAxisLabel, display: true, fontSize: 18},
            gridLines: { color: '#BEBEBE' }
          }],
        }
      }
    });

    this.updateChartAndMetaData();
    
    // Triggers default chart update if query parameters are present in url - will be updated to evaluate contents of paramMap array
    // if((this.firstParam || this.secondParam) != null){
    //   this.updateChartDefaults();
    //   this.updateChartAndMetaData();
    // }
    this.updateChartDefaults();
  }

  public setCustomDependency(dep: IXAxis) {
    this._store.dispatch(new ChangeDependencyAction(dep));
  }

  public setCustomConstant(constant: IXAxis) {
    this._store.dispatch(new ChangeConstantAction(constant));
  }

  public setCustomYScale(yscale: boolean) {
    // console.log("setYScale: " + !this.useLogScaleX)
    this._store.dispatch(new SetYScaleAction(yscale));
  }

  public setCustomXScale(xscale: boolean) {
    // console.log("setXScale: " + !this.useLogScaleX)
    this._store.dispatch(new SetXScaleAction(xscale));
  }

  public setCustomYAxis(yaxis: IYAxis) {
    this._store.dispatch(new SetYAxisAction(yaxis));
  }

  public updateChartDefaults(){
    if(this.firstParam === "logarithmic"){
      this.setCustomXScale(true);
    }
    else if(this.firstParam === "linear"){
      this.setCustomXScale(false);
    }
    else{
      console.log("invalid logScaleY arg")
    }

    if(this.secondParam === "logarithmic"){
      this.setCustomYScale(true);
    }
    else if(this.secondParam === "linear"){
      this.setCustomYScale(false);

    }
    else{
     console.log("invalid logScaleX arg")
    }
    
    if(this.thirdParam === "temp"){
     this.setCustomDependency(TEMP);
    }
    else if(this.thirdParam === "angle"){
     this.setCustomDependency(ANGLE);
    }
    else if(this.thirdParam === "field"){
      this.setCustomDependency(FIELD);
    }
    else{
     console.log("invalid dependency arg")
    }

    if(this.fourthParam === "temp"){
      this.setCustomConstant(TEMP);
     }
     else if(this.fourthParam === "angle"){
      this.setCustomConstant(ANGLE);
     }
     else if(this.fourthParam === "field"){
       this.setCustomConstant(FIELD);
     }
     else{
      console.log("invalid constant arg")
     }

    if(this.fifthParam === "ic"){
     this.setCustomYAxis(CRIT_CURR)
    }
    else if(this.fifthParam === "icw"){
     this.setCustomYAxis(CRIT_CURR_WIDTH)
    }
    else if(this.fifthParam === "nvalue"){
      this.setCustomYAxis(N_VALUE);
    }
    else{
     console.log("invalid yaxis arg")
    }
  }

  public getLegendPosition() {
    return this.windowWidth >= 800 ? 'right' : 'bottom';
  }

  public updateChartAndMetaData() {
    if (this.chart) {
      this.switchAxisScale(this.logScaleY, 'y');
      this.switchAxisScale(this.logScaleX, 'x');
      this.chart.config.options.title.text = this.title;
      this.chart.config.options.scales.xAxes[0].scaleLabel.labelString = this.xAxisLabel;
      this.chart.config.options.scales.yAxes[0].scaleLabel.labelString = this.yAxisLabel;
      this.chart.config.options.elements.line.tension = this.lineTensionBoolean();
      this.chart.config.options.elements.point.radius = this.pointSize;
      this.chart.config.options.elements.point.hoverRadius = this.pointSize + 1;
      this.chart.config.options.legend.position = this.getLegendPosition();
      this.updateChart();
    }
  }

  public updateChart() {
    if (this.chart) {
      this.chart.data.datasets = this.datasets;
      this.chart.update({
        duration:0});

    }
  }

  public updateChartWidth() {
    this.chart.config.options.legend.position = this.getLegendPosition();
    this.chart.update({
      duration:0});

  }

  public tickOptions() {
    if (this.dependency.raw === 'angle') {
      return {
        autoSkip: false,
        fontSize: 16,
        fontColor: '#383838',
        stepSize: 30
      };
    } else {
      return this.tickStyle;
    }
  }

  public lineTensionBoolean() {
    return this.lineTension ? 0 : 0.5;
  }

  public mapExperimentsToChartData(state: VisState) {
    const { experiments, dependency, yAxis } = state;
    console.log("mapEx state dependency: " + state.dependency.axisName);
    console.log("mapEx state constant: " + state.constant.dependence)
    const displayedLineType = this.displayedLineType(state.dependency, state.constant);
    const numExperiments = experiments.length;
    let newData = [];
    let pointStylesIndex = 0;
    let colorIndex = 0;

    experiments.forEach((experiment, index) => {
      const xVals = experiment.rows.map(point => point[dependency.raw]);
      const yVals = experiment.rows.map(point => point[yAxis.rowKey]);
      const chartJSPoints = this.mapXandYPoints(xVals, yVals);

      const b = this.highContrastMode ? this.bValues[colorIndex] : Math.floor((255 / numExperiments) * index);
      const g = this.highContrastMode ? this.gValues[colorIndex] : Math.floor((255 / numExperiments) * index / 2);
      const r = this.highContrastMode ? this.rValues[colorIndex] : 0;

      const newChartLine = {
        label: experiment[displayedLineType.rowKey] + displayedLineType.unit,
        backgroundColor: 'rgba(' + r + ',' + g + ',' + b + ',' + 0.5 + ')',
        borderColor: 'rgba(' + r + ',' + g + ',' + b + ',' + 1 + ')',
        fill: false,
        data: chartJSPoints,
        pointStyle: this.alternatePointMode ? this.pointStyles[pointStylesIndex] : 'circle',
      };

      pointStylesIndex++;
      colorIndex ++;
      if (colorIndex >= this.rValues.length) {
        colorIndex = 0;
      }
      if (pointStylesIndex >= this.pointStyles.length) {
        pointStylesIndex = 0;
      }

      newData = [...newData, newChartLine];
    });

    return newData;
  }

  public displayedLineType(dependency: IXAxis, constant: IXAxis): IXAxis {
    const displayed = this.DEPENDENCY_VALUES.filter(val => val !== dependency && val !== constant);
    return displayed[0];
  }

  public mapXandYPoints(xVals, yVals) {
    const xyPoints = xVals.map( (e, i) => [e, yVals[i]] ).map( (xs) =>  {
      return { x: xs[0], y: xs[1] };
    } );
    return this.orderPoints(xyPoints);
  }

  public orderPoints(array) {
    return array.sort((a, b) => (a.x > b.x) ? 1 : ((b.x > a.x) ? -1 : 0));
  }

  private switchAxisScale(log: boolean, axis: string) {
    if (!this.chart) { return; }
    if (log) {
      this.chart.config.options.scales[axis + 'Axes'][0].type = 'logarithmic';
      this.chart.config.options.scales[axis + 'Axes'][0].ticks.autoSkip = true;
      this.chart.config.options.scales[axis + 'Axes'][0].ticks.callback = (value, index, arr) => {
        if (index === arr.length - 1 || index === 0) {
          return value;
        } else if (Math.log10(value) % 1 === 0) {
          return (value).toLocaleString();
        } else {
          return '';
        }
      };
    } else {
      this.chart.config.options.scales[axis + 'Axes'][0].type = 'linear';
      this.chart.config.options.scales[axis + 'Axes'][0].ticks.callback = (value) => value;
      this.chart.config.options.scales.xAxes[0].ticks = this.tickOptions();
    }
  }

  public exportPNG() {
    const canvas: any = document.getElementById('chart-canvas');
    const ctx = canvas.getContext('2d');
    return ctx.canvas.toDataURL('image/png');
  }

  public selectAll() {
    // weird quirk of chartjs, visible lines are null hidden
    this.updateLineVisibility(null);
  }

  public deselectAll() {
    this.updateLineVisibility(true);
  }

  public updateLineVisibility(hidden) {
    this.chart.data.datasets.forEach( (dataset: any) => {
      if (dataset) {
        const toUpdate = dataset._meta[Object.keys(dataset._meta)[0]];
        if (toUpdate) {
          toUpdate.hidden = hidden;
        }
      }
    });
    this.chart.update();
  }

  private drawOnCanvas(chartInstance) {
    const chartCtx = chartInstance.chart.ctx;
    chartCtx.fillStyle = 'white';
    chartCtx.fillRect(0, 0, chartInstance.chart.width, chartInstance.chart.height);
  }

  private formatTopOfToolTip(item, data) {
    const reg = /\((A\/cm|°|A|K|T)\)/;
    const reg2 = /\(\d\d°|\d\dK|\d\dT|\dT|\d°|\dK/;
    const mainLabel = data.datasets[item.datasetIndex].label;
    if (mainLabel.toString().endsWith('°')) {
      if (reg.exec(this.xAxisLabel)[1] === 'T') {
        return `${reg2.exec(this.title)},  ${item.xLabel}${reg.exec(this.xAxisLabel)[1]}, ${mainLabel}`;
      }
      return `${item.xLabel}${reg.exec(this.xAxisLabel)[1]}, ${reg2.exec(this.title)}, ${mainLabel}`;
    } else if (mainLabel.toString().endsWith('K')) {
        if (reg.exec(this.xAxisLabel)[1] === '°') {
          return `${mainLabel}, ${reg2.exec(this.title)}, ${item.xLabel}${reg.exec(this.xAxisLabel)[1]}`;
        }
      return `${mainLabel}, ${item.xLabel}${reg.exec(this.xAxisLabel)[1]}, ${reg2.exec(this.title)}`;
    } else if (mainLabel.toString().endsWith('T')) {
      if (reg.exec(this.xAxisLabel)[1] === 'K') {
        return `${item.xLabel}${reg.exec(this.xAxisLabel)[1]}, ${mainLabel}, ${reg2.exec(this.title)}`;
      }
      return `${reg2.exec(this.title)}, ${mainLabel}, ${item.xLabel}${reg.exec(this.xAxisLabel)[1]}`;
    }
    return `${item.xLabel}${reg.exec(this.xAxisLabel)[1]}, ${mainLabel}, ${reg2.exec(this.title)}`;

  }

  private formatBottomOfToolTip(tooltipItems) {
    const reg = /\((A\/cm|°|A|K|T)\)/;
    const reg2 = /𝘐c\/𝘸|𝘐c|𝘯-value/;
    let yUnits = '';
    if (reg.exec(this.yAxisLabel) !== null) {
      yUnits = reg.exec(this.yAxisLabel)[1];
    }
    const yLabel = tooltipItems.yLabel;
    return `${reg2.exec(this.yAxisLabel)} = ${yLabel} ${yUnits}`;
  }
}
