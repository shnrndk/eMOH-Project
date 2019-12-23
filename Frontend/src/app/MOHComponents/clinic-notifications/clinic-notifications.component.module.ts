import { NgModule } from "@angular/core";
import { CommonModule } from '@angular/common';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import {MatSnackBarModule} from '@angular/material/snack-bar';
import {
  MatButtonModule,
  MatInputModule,
  MatRippleModule,
  MatFormFieldModule,
  MatTooltipModule,
  MatSelectModule,
  MatRadioModule,
  MatExpansionModule,
  MatDatepickerModule,MatNativeDateModule

} from '@angular/material';
import {MatSlideToggleModule} from '@angular/material/slide-toggle';
import { Clinics } from "./clinic-notifications.component.routing";
import { ClinicNotificationsComponent } from "./clinic-notifications.component";
import { ClinicRecordsComponent } from "../clinic-records/clinic-records.component";
import { AddClinicComponent } from "../add-clinic/add-clinic.component";

@NgModule({
    declarations:[ClinicNotificationsComponent,ClinicRecordsComponent,AddClinicComponent],
    imports:[
        Clinics,
        CommonModule,
        FormsModule,
        ReactiveFormsModule,
        MatButtonModule,
        MatRippleModule,
        MatFormFieldModule,
        MatInputModule,
        MatSelectModule,
        MatTooltipModule,
        MatRadioModule,
        MatDatepickerModule,MatNativeDateModule,
        MatSlideToggleModule,
        MatSnackBarModule,
        MatExpansionModule,
    ],
    

})


export class ViewNotifications {}