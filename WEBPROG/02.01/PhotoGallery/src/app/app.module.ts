import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { PhotoComponent } from './photo/photo.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { NavComponent } from './nav/nav.component';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { SearchPipe } from './search.pipe';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    PhotoComponent,
    NavComponent,
    SearchPipe
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    FormsModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
