import { Component, OnInit } from '@angular/core';
import { WeightService } from 'app/Services/weight.service';
import { Router } from '@angular/router';
import { Weight } from 'app/Services/Models/weight';

@Component({
  selector: 'app-view-weight-table',
  templateUrl: './view-weight-table.component.html',
  styleUrls: ['./view-weight-table.component.scss']
})
export class ViewWeightTableComponent implements OnInit {

  constructor(private weightService: WeightService, private router: Router) { }

  weight: Weight;

  ngOnInit() {
    this.weightService.getdata().subscribe(data=> this.weight=data);
  }

  onClickMe(babyID){
    console.log(babyID);
    console.log(this.router.url);
    this.router.navigate([this.router.url,'viewWeightbyId',babyID])
  }
}
