import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { BrowseComponent } from './browse/browse.component';
import { ChartComponent } from './chart/chart.component';
import { AboutComponent } from './about/about.component';

const routes: Routes = [
  { path: 'dataset/:id', component: ChartComponent },
  { path: 'about', component: AboutComponent },
  { path: '', component: BrowseComponent, pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
