import { Component } from '@angular/core';

@Component({
  selector: 'vis-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {

  public isIE;
  public isIE11;
  constructor() {
    this.isIE = /msie\s|trident\//i.test(window.navigator.userAgent);
    this.isIE11 = window.navigator.userAgent.indexOf('Trident') !== -1 && window.navigator.userAgent.indexOf('rv:11') !== -1;
  }

}
