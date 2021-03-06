import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Weight } from 'app/Services/Models/weight';

@Injectable({
  providedIn: 'root'
})
export class WeightService {

  constructor(private http: HttpClient) { }

  
  getdata():Observable<Weight>{
    let uri = "http://localhost:3000/babies/weight/view";
    return this.http.get<Weight>(uri);
  }

  __url= "http://localhost:3000/babies/addweight";
  add(userData){                                   
   console.log(userData)
   return this.http.post<any>(this.__url,userData);
  }

  getbabyweightById(babyId){             
    let uri = `http://localhost:3000/babies/viewwieghtandheight/${babyId}`;
    return this.http.get<Weight>(uri,{observe: 'response'})
   } 

   getbabyweightdata(babyId){             
    let uri = `http://localhost:3000/babies/viewwieghtandheight/${babyId}`;
    return this.http.get<Weight>(uri)
   }

   register(userData,babyId){        
    let _url = `http://localhost:3000/babies/update/heightweight?baby_id=${babyId}`
    console.log(userData)
    return this.http.put<Weight>(_url , userData,{observe: 'response'});
   }

   searchweightdataById(babyId){             //Selecting a record by motherId
    let uri = `http://localhost:3000/babies/searchweightbyid/${babyId}`;
    return this.http.get<Weight>(uri,{observe: 'response'})
   }
}


