import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Esmeralda2';
  szam:number
  constructor(){
    this.szam=5
  }
  novel(){
    this.szam++;
  }
  

}
