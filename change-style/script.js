function colorBody() {
    document.body.style.background  = document.getElementsByName("bodycolor")[0].value;
}
function colorHeader(){
    var myHeader = document.getElementById("header-menu")
    myHeader.style.background  = document.getElementsByName("headercolor")[0].value;
}

function textFont(){
    var myHeader = document.getElementById("header-menu")
    myHeader.style.background  = document.getElementsByName("textFont")[0].value;
}