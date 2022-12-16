import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
addNumber() {
  const input = document.getElementById('intToAdd') as HTMLInputElement | null;

  const valueInput = input?.value;

  if(valueInput!=null){
    var a = this._http.post<number>(("http://localhost:8080/adder/accumulate?num="+valueInput),null)
    .subscribe((value) => {

    console.log(value) // 👉️ "Initial value"
    this.currentIntResultat=value;

    });
  }



}


//http://localhost:8080/adder/add?num=3
currentInt : number;
currentIntResultat:number;
getCurrent() {
  var a = this._http.get<number>("http://localhost:8080/adder/current").subscribe(value => {
      this.currentInt=value;
  });
}

constructor(private _http: HttpClient){
  this.currentInt=0;
  this.currentIntResultat=0;
}
  title = 'finito';
}
