import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { PhotoComponent } from './photo/photo.component';

const routes: Routes = [
  {path:'home', component:HomeComponent},
  {path:'photos', component:PhotoComponent},
  {path:'', component:HomeComponent},
  {path:'**', component:HomeComponent}

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
