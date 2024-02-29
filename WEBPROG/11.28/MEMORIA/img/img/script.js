function elemFactory(mit, osztaly, adatok, fuggveny){
    vissza=document.createElement(mit)
    vissza.className=osztaly
    if(adatok) vissza.dataset.kep=adatok
    if (fuggveny) vissza.onclick=fuggveny
    return vissza
}
function $(mit){
    var v=document.getElementByClassName(mit)
    if (v.length==1) return v[0]
    else v
}

function kepetmegjelenit(){
    var latszik= document.getElementByClassName("latszik")
    console.log(latszik.length)
    if (!latszik || latszik.lenght<2){
    this.style.backgroundImage="url('"+this.dataset.kep+"')"
    this.classList.add("latszik")
    }
}



var palya = document.getElementById("palya")
var latszik = $("latszik")
palya.appendChild(elemFactory("div", "cella", "1.png", kepetmegjelenit))
palya.appendChild(elemFactory("div", "cella", "2.png", kepetmegjelenit))
palya.appendChild(elemFactory("div", "cella", "3.png", kepetmegjelenit))
palya.appendChild(elemFactory("div", "cella", "4.png", kepetmegjelenit))
palya.appendChild(elemFactory("div", "cella", "5.png", kepetmegjelenit))
palya.appendChild(elemFactory("div", "cella", "6.png", kepetmegjelenit))


