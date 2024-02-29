var http = new XMLHttpRequest()
var animals =[];

var oszlopok =  ["id", "nev","faj", "erkezes"]
function setRequest(method, url, feldolgozo, allat){
    //http.open("get", "http://localhost:3000/allatok", true)
    http.open(method, url, true)
    http.onload=function (){
        feldolgozo()
    }
    //http.setRequestHeader('Content-Type', "applocation/json")
    http.send(JSON.stringify(allat))

}

setRequest("get","http://localhost:3000/allatok" , getFeldolgozo)

function getFeldolgozo(){
    if (http.status==200){
        animals=JSON.parse(http.responseText)
        render()
    }
}
// http.onreadystatechange= function(){
//     console.log(http.status, ";", http.readyState)
//     if (http.status==200 && http.readyState==4)
//     {
//         console.log("A kérés sikeres volt!")
//         animals=JSON.parse(http.responseText)
//         console.log(animals)
//         render()
//     }
   
//     // else{
//     //     console.log("baj van!")
//     // }
// }

function deleteAnimal(id){

    console.log("Törlendő állat száma:", id)
    setRequest("delete",`http://localhost:3000/allatok/${id}`, deleteFeldolgozo)

}

function deleteFeldolgozo(){
    console.log(http.status)
    if (http.status==200){
        setRequest("get","http://localhost:3000/allatok" , deleteFeldolgozo)

    }
}
function render(){
    container=document.getElementsByClassName("container")[0]
    sor = document.createElement("div")
    sor.className="row"
    sor.classList.add("my-4")


    for (const oszlop of oszlopok) {
        cella=document.createElement("div")
        cella.className="col"
        cella.innerHTML=oszlop
        sor.appendChild(cella)
        
    }
    cella=document.createElement("div")
        cella.className="col"
        cella.innerHTML="Műveletek"
        sor.appendChild(cella)

    container.appendChild(sor)

    //Adatok
    for (const animal of animals) {
        
    
        sor = document.createElement("div")
        sor.className="row"
        sor.classList.add("my-2")
        sor.id=animal.id

        for (const oszlop of oszlopok) {
            cella=document.createElement("div")
            cella.className="col"
            cella.innerHTML= 
            `
            <input type="text" class="form-control" value=${animal[oszlop]}>

            `
            animal[oszlop]
            sor.appendChild(cella)
            
        }
        cella=document.createElement("div")
        cella.className="col"
        cella.innerHTML=`
        <button type="button" class="btn btn-outline-warning">Save</button>
        <button type="button" onclick="deleteAnimal(${animal.id})" class="btn btn-outline-danger">Delete</button>
        `
        sor.appendChild(cella)
        container.appendChild(sor)
    }

   

}