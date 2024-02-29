import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'search'
})
export class SearchPipe implements PipeTransform {

  transform(adat:any[], keresoSzo:any): any {
    if (!adat || adat.length==0) return null;
    if (!keresoSzo || keresoSzo=="") return adat;
    keresoSzo=keresoSzo.toLowerCase()
    adat = adat.filter(
      (a)=>a.title.toLowerCase().includes(keresoSzo)
    )
    return adat;
  }

}
