

var name = ["Ed", "Joe", "BB", "Sunny"]
var colors = ["red", "green", "blue", "orange"]

console.log(colors)
console.log(name)

colors.push("purple");
name.push("Black Beauty")

console.log(colors);
console.log(name);


var object = {};

name.map(function(x, y){
	object[x] = colors[y];
});

console.log(object); 


// write a constructor function for a car. Give it a few different properties of various data types,
// including at least one function. Demonstrate that your function works by creating a few cars 
// with it.

function Car(make, model, carColor) {
	console.log("New car:", this)

	this.make = make
	this.model = model
	this.carColor = carColor

	this.speed = function() {console.log("Zooooom!");};

	console.log("Car initialization complete.");
}

console.log("Make new car...");
var newCar = new Car("Toyota", "Preus", "red");
console.log(newCar);
console.log("Car can speed:");
newCar.speed();
console.log("----");



















