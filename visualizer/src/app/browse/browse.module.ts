import { NgModule } from '@angular/core';
import { MatButtonModule, MatIconModule, MatTableModule } from '@angular/material';
import { MatListModule } from '@angular/material/list';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatCardModule } from '@angular/material/card';
import { BrowseComponent } from './browse.component';
import { CommonModule } from '@angular/common';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { FormsModule } from '@angular/forms';

@NgModule({
  imports: [
    CommonModule,
    MatListModule,
    MatCardModule,
    MatGridListModule,
    MatButtonModule,
    MatIconModule,
    MatTableModule,
    MatProgressSpinnerModule,
    MatFormFieldModule,
    MatInputModule,
    FormsModule
  ],
  declarations: [
    BrowseComponent
  ]
})
export class BrowseModule { }
