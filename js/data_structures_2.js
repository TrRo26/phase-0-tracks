
// define an array of names and an array of colors
var names=["Ed", "Rocky", "Dany","Jacky"];
var colors=["Blue","Red","Green","Black"];

// test adding a new name and new color
names.push("Lazy");
colors.push("Orange");

// define a function to take two arrays as arguments
function myHorses(names, colors){
// declare an empty object.
var horse={};
// use for loop to go through the names and colors arrays
for(var i=0; i < names.length; i++ )
{
// assign the key-value from names and colors to the object.       
horse[names[i]]=colors[i];
}
return horse;
}
// print out the function with arrays passed
console.log(myHorses(names, colors));

// define an object that takes multiple arguments
function Car(make, model, year, isGoodcar){
    console.log("This is our car", this);
    this.make=make;
    this.model=model;
    this.year=year;
    this.isGoodcar=isGoodcar;
    this.color=function() { console.log("it is really fancy color"); };
}

// driver code to make three instances of Car
var car= new Car("Toyota", "Camry", 2015, false);
var newcar= new Car("Honda", "Civic", 2011, true);
var thirdcar= new Car("Ford", "Mustang", 1978, true);

// Print out three instances
console.log(car, newcar, thirdcar);
console.log("give the color a function value!");
car.color();
newcar.color();
thirdcar.color();
