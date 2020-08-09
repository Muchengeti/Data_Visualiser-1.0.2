import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'vis-about',
  templateUrl: './about.component.html',
  styleUrls: ['./about.component.scss']
})
export class AboutComponent implements OnInit {


  public developers = [
    {name: 'Brady Hanna', linkedin: 'https://www.linkedin.com/in/brady-hanna/'},
    {name: 'David Hack', linkedin: 'https://www.linkedin.com/in/dhack8/'},
    {name: 'Callum Li', linkedin: 'https://www.linkedin.com/in/callum-li'},
    {name: 'Ben Percy', linkedin: 'https://www.linkedin.com/in/ben-percy/'},
    {name: 'Ryan Field', linkedin: 'https://www.linkedin.com/in/ryan-field-649a1616b/'},
    {name: 'Ryan Cherry', linkedin: 'https://www.linkedin.com/in/ryan-cherry-980564142/'},
  ];

  constructor(private _router: Router) { }

  ngOnInit() {
  }

  public getCurrentYear() {
    const date = new Date();
    return date.getFullYear() < 1000 ? date.getFullYear() + 1900 : date.getFullYear() ;
  }

  public goToBrowse(): void {
    this._router.navigate(['/browse']);
  }

}
