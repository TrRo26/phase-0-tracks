var name = ["Ed", "Joe", "BB", "Sunny"]
var colors = ["red", "green", "blue", "orange"]

console.log(colors)
console.log(name)

colors.push("purple");
name.push("Black Beauty")

console.log(colors)
console.log(name)


// Wasn't able to finish
var object = {};

name.map(function(x,y){
  object[name] = colors[y];
});

console.log(object);