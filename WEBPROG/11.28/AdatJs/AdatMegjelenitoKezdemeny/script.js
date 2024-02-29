console.log("helló")
// CRUD 
var adatok =[
    {id:1,nev:"Micike", faj:"macska", ar:"1000", szin:"cirmos"},
    {id:2,nev:"Lune", faj:"macska", ar:"500", szin:"cirmos"},
    {id:3,nev:"Macsa", faj:"macska", ar:"2000", szin:"cirmos"}
]
const oszlopok=["nev", "faj", "ar","szin"]
var keresoSzo

function $(mit){
    vissza=document.querySelectorAll(mit)
    if (vissza.length==1) return vissza[0]
    return vissza
}

function rendel(){
    beallit()
    $('#adatok').innerHTML=""
    felecMegjelnit()
    ujFelvetele()
    // megjelenitendo=adatok
    megjelenitendo=kereses(adatok)
    adatMegjelenites(megjelenitendo) 
}
function kereses(tomb){
    console.log("KeresoSzo", keresoSzo)
    if (!keresoSzo) return tomb
    return tomb.filter(
        (e)=>{return e.nev.toLoweCase().includes(keresoSzo)}
    )
}
function beallit(){
    $("#search").addEventListener("keyup", function(){
        keresoSzo=this.value
        rendel()
    }
    )
}
function ujFelvetele(){
    sor=document.createElement('div')
    sor.className="row"
    sor.classList.add("my-2")
    oszlopok.forEach(
        function(mezoNev){
            oszlop=document.createElement('div')
            oszlop.className="col"
            oszlop.innerHTML=`<input class="uj${mezoNev}" type="text"  class="form-control">`
            sor.appendChild(oszlop)  
        })
        oszlop=document.createElement('div')
        oszlop.className="col"       
        oszlop.innerHTML=`<button type="button" onclick="hozzaad()" class="btn btn-primary">Hozzáadás</button>`
        sor.appendChild(oszlop)
        $('#adatok').appendChild(sor)
}



function felecMegjelnit(){
    sor = document.createElement('div')
    sor.className="row"
    sor.classList.add("my-2")
    sor.classList.add("fw-bold")

    for(let mezo of oszlopok){
        // console.log(mezo)
        fejlec= document.createElement('div')
        fejlec.className="col"
        fejlec.innerHTML=mezo
        sor.appendChild(fejlec)
    }

    fejlec= document.createElement('div')
    fejlec.className="col"
    fejlec.innerHTML="Műveletek"
    sor.appendChild(fejlec)
    $('#adatok').appendChild(sor)
}



function adatMegjelenites(megjelenitendo){
    megjelenitendo.forEach(
        function(allat){
            sor=document.createElement('div')
            sor.className="row"
            sor.classList.add("my-2")
            oszlopok.forEach(
                function(mezoNev){
                    oszlop=document.createElement('div')
                    oszlop.className="col"
                    oszlop.innerHTML=`<input class="${allat.id}${mezoNev}" type="text" value="${allat[mezoNev]}" class="form-control">`
                    sor.appendChild(oszlop)  
                })
                oszlop=document.createElement('div')
                oszlop.className="col"
                let a =4
                oszlop.innerHTML=
                `
                <button type="button" onclick="szerkeszt(${allat.id})" class="btn btn-warning">Szerkeszt</button>    
                <button type="button" onclick="torol(${allat.id})" aerteke="${a}" class="btn btn-danger">Töröl</button>
                `
                sor.appendChild(oszlop) 

            $('#adatok').appendChild(sor)
        })
} // adatmegjelenítő vége

function szerkeszt(id){
    allat=adatok.find(
        (sor)=>{return sor.id==id})    
    // allat.nev=document.getElementsByClassName(`${allat.id}nev`)[0].value    
    // allat.faj=document.getElementsByClassName(`${allat.id}faj`)[0].value
    // allat.ar=document.getElementsByClassName(`${allat.id}ar`)[0].value
    // allat.szin=document.getElementsByClassName(`${allat.id}szin`)[0].value
    
    // $ ?????

    for(let mezo of oszlopok){
        allat[mezo]=document.getElementsByClassName(`${allat.id}${mezo}`)[0].value 
    }
    console.log(adatok)
    rendel()
}

function hozzaad(){
    let allat={}
    for(let mezo of oszlopok){
        allat[mezo]=document.getElementsByClassName(`uj${mezo}`)[0].value
        document.getElementsByClassName(`uj${mezo}`)[0].value="" 
    }
    allat.id=Number(adatok[adatok.length-1].id)+1
    adatok.push(allat)
    rendel()
}


function torol(allat){
    console.log("Törlendő: ", allat)
    //splice, slice

    adatok=adatok.filter(
        (sor) => { return sor.id != allat}
    )
    rendel()
}
rendel()