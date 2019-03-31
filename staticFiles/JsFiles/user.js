if(localStorage.length > 0){
    console.log(localStorage);
    var element = document.getElementById("navbardrop");
    element.textContent = localStorage.user.fullname;
}