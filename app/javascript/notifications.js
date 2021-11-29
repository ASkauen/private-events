let list = document.getElementById("notif_list")
let button = document.getElementById("notifs")
console.log(list)
window.addEventListener("click", function(e){
    if(e.target == list){
        return
    }else if(e.target == button){
        list.classList.toggle("hidden")
    }
})