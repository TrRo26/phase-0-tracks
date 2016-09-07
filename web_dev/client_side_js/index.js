console.log("The script is running!");

var text= document.getElementById("Header");
console.log(text);
text.style.fontSize = "20px";

function addBackgroundColor (event){
	event.target.style.backgroundColor = "blue";
}

var background = document.getElementById("body");
background.addEventListener("mouseout",addBackgroundColor);
