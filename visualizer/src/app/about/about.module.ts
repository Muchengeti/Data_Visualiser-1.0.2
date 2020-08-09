import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { AboutComponent } from './about.component';
import { MatButtonModule, MatCardModule } from '@angular/material';

@NgModule({
  imports: [
    CommonModule,
    MatCardModule,
    MatButtonModule
    ],
  declarations: [
    AboutComponent
  ]
})
export class AboutModule {}
