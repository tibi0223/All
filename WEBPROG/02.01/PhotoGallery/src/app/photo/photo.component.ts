import { Component } from '@angular/core';
import { BaseService } from '../base.service';

@Component({
  selector: 'app-photo',
  templateUrl: './photo.component.html',
  styleUrls: ['./photo.component.css']
})
export class PhotoComponent {
  kepek:any
  keresoSzo=""
  constructor(private base:BaseService){
    this.base.getPhotos().subscribe(
      (res)=>{
        this.kepek=res
        console.log(res)
      }
    )
  }
  kereses(event:any){
    console.log(event)
  }
}
