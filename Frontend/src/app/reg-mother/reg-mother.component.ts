import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { AuthService } from 'app/Services/auth.service';
import { Router } from '@angular/router';
import { MatSnackBar } from '@angular/material';
import { concat } from 'rxjs';
import * as JWT from 'jwt-decode';

@Component({
  selector: 'app-reg-mother',
  templateUrl: './reg-mother.component.html',
  styleUrls: ['./reg-mother.component.scss']
})
export class RegMotherComponent implements OnInit {

  passwordType = "password";
  regMotherForm: FormGroup;
  generatedPassword;
  villages = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"]
  constructor(private formBuilder: FormBuilder, private authService: AuthService, private router: Router, private snackBar: MatSnackBar) { }

  ngOnInit() {
    let decodedToken = JWT(localStorage.getItem('token'));
    let role = decodedToken['role'];

    if (role == "mother") this.router.navigate([''])
    this.generatedPassword = this.generatePassword()
    this.regMotherForm = this.formBuilder.group({
      username: ['', Validators.email],
      userid: ['', Validators.required],
      password: [this.generatedPassword, Validators.required],
      villageId: ['', Validators.required],
      role: ['mother']
    })


    this.authService.getPreviousUserId(localStorage.getItem('userid').substr(0, 1)).subscribe(
      data => {
        console.log(data[0]);
        this.regMotherForm.patchValue({
          userid: this.generaterUserId(data[0]['userid']),



        })
      })

  }
  //Generate User Id by increasing mother id by 1
  generaterUserId(userid) {
    console.log(userid.substr(1, 1))
    console.log(userid.substr(2))
    var motherNo = parseInt(userid.substr(2))
    return (motherNo + 1)
  }

 //Generate password with letters and numbers
  generatePassword() {
    var length = 8;
    var result = '';
    var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    var charactersLength = characters.length;
    for (var i = 0; i < length; i++) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result;
  }

  onSubmit() {
    console.log(this.regMotherForm.value['villageId']);
    console.log(this.regMotherForm.value['userid'])
    this.regMotherForm.value['userid'] = localStorage.getItem('userid').substr(0, 1).concat(this.regMotherForm.value['villageId']).concat(this.regMotherForm.value['userid'])
    console.log(this.regMotherForm.value)
    localStorage.setItem('newFamIdForNewUser', this.regMotherForm.value['userid'])
    this.authService.registerUser(this.regMotherForm.value).subscribe(
      res => {
        console.log(res);
        if (res == "EqualEmail") {
          let snackBarRef = this.snackBar.open("The Email You Entered is in the Database, Enter another Email", 'OK');
        } else {
          let snackBarRef = this.snackBar.open("User Has been Registered", 'OK');
          this.router.navigate(['viewApprovedFamilies/AddApprovedFamilies']);
        }
      },
      err => {
        console.log(err)
        let snackBarRef = this.snackBar.open("Error, Pls Try Again!", 'OK');
      }
    )
  }

  showPassword() {
    if (this.passwordType == "text") this.passwordType = "password"
    else this.passwordType = "text"
  }
}
