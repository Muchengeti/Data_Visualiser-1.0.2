import { NgModule } from '@angular/core';
import { BaseChartComponent } from './base-chart.component';
import { CommonModule } from '@angular/common';
import { MatIconModule } from '@angular/material';
import { MatButtonModule } from '@angular/material/button';

@NgModule({
  imports: [
    CommonModule,
    MatIconModule,
    MatButtonModule
  ],
  exports: [
    BaseChartComponent
  ],
  declarations: [
    BaseChartComponent
  ]
})
export class BaseChartModule { }
