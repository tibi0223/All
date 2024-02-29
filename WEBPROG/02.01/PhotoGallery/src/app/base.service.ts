import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class BaseService {
  url="https://jsonplaceholder.typicode.com/photos"
  constructor(private http:HttpClient) { }

  getPhotos(){
    return this.http.get(this.url)
  }
}
