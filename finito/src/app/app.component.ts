import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
currentInt : number;
getCurrent() {
  var a = this._http.get<number>("http://localhost:8080/adder/current").subscribe(value => {
      this.currentInt=value;
  });
}

constructor(private _http: HttpClient){
  this.currentInt=-1;
}
  title = 'finito';
}
