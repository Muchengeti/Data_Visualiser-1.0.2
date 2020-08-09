import { NgModule } from '@angular/core';
import { ChartComponent } from './chart.component';
import { CommonModule } from '@angular/common';
import { MatFormFieldModule, MatIconModule, MatSelectModule, MatToolbarModule } from '@angular/material';
import { MatButtonModule } from '@angular/material/button';
import { MatButtonToggleModule } from '@angular/material/button-toggle';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatCardModule } from '@angular/material/card';
import { BaseChartModule } from '../base-chart/base-chart.module';
import { MatListModule } from '@angular/material/list';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatDividerModule } from '@angular/material/divider';
import { MatExpansionModule } from '@angular/material/expansion';
import { MatSliderModule } from '@angular/material/slider';
import { MatTableModule } from '@angular/material/table';


@NgModule({
  imports: [
    CommonModule,
    MatToolbarModule,
    MatFormFieldModule,
    MatSelectModule,
    MatButtonModule,
    MatButtonToggleModule,
    MatProgressSpinnerModule,
    MatCardModule,
    BaseChartModule,
    MatListModule,
    MatCheckboxModule,
    MatDividerModule,
    MatIconModule,
    MatExpansionModule,
    MatSliderModule,
    MatTableModule
  ],
  declarations: [
    ChartComponent
  ]
})
export class ChartModule { }
