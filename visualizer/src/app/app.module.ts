import { BrowserModule } from '@angular/platform-browser';
import { Injectable, NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FigshareService } from './_shared/services/figshare.service';
import { AppRoutingModule } from './app-routing.module';
import { ChartModule } from './chart/chart.module';
import { BrowseModule } from './browse/browse.module';
import { MatButtonModule, MatIconModule } from '@angular/material';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatListModule } from '@angular/material/list';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatCardModule } from '@angular/material/card';
import { AboutModule } from './about/about.module';
import { HttpClientModule } from '@angular/common/http';
import { HeaderModule } from './header/header.module';
import { FooterModule } from './footer/footer.module';
import { StoreModule } from '@ngrx/store';
import { visReducer } from './_ngrx/vis.reducer';
import { EffectsModule } from '@ngrx/effects';
import { VisEffects } from './_ngrx/vis.effects';
import { HAMMER_GESTURE_CONFIG } from '@angular/platform-browser';
import { GestureConfig } from '@angular/material';
import 'hammerjs';

declare var Hammer: any;

@Injectable()
export class HammerConfig extends GestureConfig  {
  buildHammer(element: HTMLElement) {
    return new GestureConfig({touchAction: 'pan-y'}).buildHammer(element);
  }
}

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    HttpClientModule,
    StoreModule.forRoot(
      {vis: visReducer}
    ),
    EffectsModule.forRoot([VisEffects]),
    AppRoutingModule,
    MatToolbarModule,
    MatListModule,
    MatCardModule,
    MatGridListModule,
    MatButtonModule,
    MatIconModule,
    ChartModule,
    BrowseModule,
    AboutModule,
    HeaderModule,
    FooterModule
  ],
  providers: [
    FigshareService,
    { provide: HAMMER_GESTURE_CONFIG, useClass: HammerConfig }
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
