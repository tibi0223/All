let url = "https://jsonplaceholder.typicode.com/todos";
let furl = "https://szofti-1-e-default-rtdb.europe-west1.firebasedatabase.app/messages/";
let data

getData()

// async function getData(){
//     var response = await fetch(url)
//     var todo= await response.json()
//     console.log("Response: ",todo)
// }

// function getData(){
//     fetch(furl+".json").then(
//         // function(res)
//         // {
//         //     return res.json()      
//         // }
//         res=> res.json()
//         ).then((json)=>{
//             data=json
//             console.log(data)
//         })
//     .catch((err)=>console.log("Hiba",err))
// }
function getData(){
    fetch(furl+".json")
    .then( res=> res.json()).
     then((json)=>{
        data=[]
        for (const key in json) {
        //  console.log(json[key])
        //   let sor= {}
        //   sor.key=key
        //   sor.user=json[key].user      
        //   sor.time=json[key].time      
        //   sor.message =json[key].message      
        //   console.log(sor)
        //   data.push(sor)
            data.push({key:key, ...json[key]})
        }
        render() })
    .catch((err)=>console.log(err))
}

function elemFactory(type, myClass, text){
    let elem = document.createElement(type)
    elem.className=myClass
    if (text) elem.innerHTML=text
    return elem
}
function sendMessage(){
    let text= document.getElementById("new-message",).value
    let body = {user:"Tibor", message:text, time:new Date().toLocaleTimeString}
    console.log(body)
    fetch(furl+".json",{method: "post", body:JSON.stringify(body), headers:{"Content-Type":"application/json; charset=UTF-8"}}).then(()=>getData())
}

function render(){
    let container = document.getElementById("container")     
    container.innerHTML=""

    let sor= elemFactory('div','row')
    let taera= elemFactory('textarea', 'col')
    taera.id="new-message"
    sor.appendChild(taera)  

    let addBtn= elemFactory('button', 'col', 'Send')
    addBtn.onclick=function(){ sendMessage()}
    sor.appendChild(addBtn)

    container.appendChild(sor)

    for (const uzi of data) {
        let sor= elemFactory('div','row')
        sor.appendChild(elemFactory('div', 'col', uzi.user))
       
        let taera= elemFactory('textarea', 'col', uzi.message)
        taera.id=uzi.key
        sor.appendChild(taera)

        sor.appendChild(elemFactory('div', 'col', uzi.time))
        container.appendChild(sor)
    }


    console.log(data)
}