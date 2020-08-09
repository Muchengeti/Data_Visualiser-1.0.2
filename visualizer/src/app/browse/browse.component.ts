import { Component, HostListener } from '@angular/core';
import { FigshareService } from '../_shared/services/figshare.service';
import { IDatasetMetadata } from '../_shared/interfaces/interfaces';
import { Router } from '@angular/router';

const MOBILE_PIXEL_BOUNDARY = 650;

enum SortingType {
  NameUp,
  NameDown,
  DateUp,
  DateDown,
}

@Component({
  selector: 'vis-browse',
  templateUrl: './browse.component.html',
  styleUrls: ['./browse.component.scss']
})
export class BrowseComponent {

  public sortMode: SortingType;
  public titleSortIcon = 'keyboard_arrow_up';
  public publishedDateSortIcon = 'keyboard_arrow_up';

  public spacing: string;

  public lists: IDatasetMetadata[] = null;

  public keyword: string;

  public linkMessage = 'View this dataset on figshare.';
  public errorMessage = 'Dataset not supported.';

  constructor(private _figshareService: FigshareService, private _router: Router) {
    this.sortMode = SortingType.NameDown;
    this.sortByDatasetName();
    this.spacing = window.innerWidth > MOBILE_PIXEL_BOUNDARY ? '15%' : '0%';
  }


  @HostListener('window:resize', ['$event'])
  onResize(event) {
    this.spacing = window.innerWidth > MOBILE_PIXEL_BOUNDARY ? '15%' : '0%';
  }

  public selectRow(row: IDatasetMetadata) {
    if (row.cached) {
      this._router.navigate(['/dataset', row.figshare_id]);
    }
  }

  public getFigshareURL(row: IDatasetMetadata) {
    return row.url_public;
  }

  public sortByDatasetName() {
    this._figshareService.getListOfDatasets()
      .subscribe(datasets => {
        if (this.sortMode === SortingType.NameUp) {
          datasets.sort((a: IDatasetMetadata, b: IDatasetMetadata) => b.title.localeCompare(a.title));
          this.sortMode = SortingType.NameDown;
          this.titleSortIcon = 'keyboard_arrow_down';
          this.publishedDateSortIcon = '';
        } else {
          datasets.sort((a: IDatasetMetadata, b: IDatasetMetadata) => a.title.localeCompare(b.title));
          this.sortMode = SortingType.NameUp;
          this.titleSortIcon = 'keyboard_arrow_up';
          this.publishedDateSortIcon = '';
        }
        const orderedByCached = [
          ...datasets.filter(data => data.cached),
          ...datasets.filter(data => !data.cached),
        ];
        this.lists = orderedByCached;
      });
  }

  public sortByPublishedDate() {
    this._figshareService.getListOfDatasets()
      .subscribe(datasets => {
          datasets.sort((a: IDatasetMetadata, b: IDatasetMetadata) => {
            const aDate = new Date(a.published_date);
            const bDate = new Date(b.published_date);
            return (this.sortMode === SortingType.DateUp) ? (+aDate - +bDate) : (+bDate - +aDate);
          });
        this.sortMode = this.sortMode === SortingType.DateUp ? SortingType.DateDown : SortingType.DateUp;
        this.publishedDateSortIcon = this.sortMode === SortingType.DateUp ? 'keyboard_arrow_up' : 'keyboard_arrow_down';
        this.titleSortIcon = '';
        const orderedByCached = [
          ...datasets.filter(data => data.cached),
          ...datasets.filter(data => !data.cached),
        ];
        this.lists = orderedByCached;
      });
  }

  public filterByKeyword() {
    const iArray: IDatasetMetadata[] = [];
    this._figshareService.getListOfDatasets()
      .subscribe(datasets => {          datasets.sort((a: IDatasetMetadata, b: IDatasetMetadata) => a.title.localeCompare(b.title)),
        datasets.forEach(dataset => {
          dataset.title = this.formatTitle(dataset.title);
          if (dataset.title.toLocaleLowerCase().includes(this.keyword.toLocaleLowerCase()) ||
            dataset.published_date.toLocaleLowerCase().includes(this.keyword.toLocaleLowerCase())) {
              iArray.push(dataset);
          }
        });
        const orderedByCached = [
          ...iArray.filter(data => data.cached),
          ...iArray.filter(data => !data.cached),
        ];
        this.lists = orderedByCached;
  });
  }
  public formatTitle(title: string): string {
    return title
      .replace('Critical current characterisation of', '')
      .replace('superconducting wire', '');
  }

}
