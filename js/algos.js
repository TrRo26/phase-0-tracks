/*n algos.js, write a function that takes an array of words or phrases and returns the 
longest word or phrase in the array. So if we gave your function the array of 
["long phrase","longest phrase","longer phrase"], it would return "longest phrase". 
This is a logical reasoning challenge, so try to reason through this based on what you 
already know, rather than Googling the fanciest solution or looking up built-in sorting 
functions. Note that "some string".length will do what you expect in JS.
Add driver code that tests your function on a few arrays.
*/

// Create an array
var words = ["hi", "hello there", "how are you today", "salutations"];

// Create a function 
function Lw(array) {
	console.log("Array:", this)
	this.array = array

// create a nested function that loops though each phrase of the array
	this.find = function() {
		var num = 0;
		var long; {
// set the number of loops
		for var (i = 0; i < array.length; i++) {
			if array[i].length > num {
				var num = array[i].length;
				long = arr[i];      //(var x = array[i].length;
		}
			
// find the length of each element in the array
			console.log(i);
// print the longest element
		}
	}

// DRIVER CODE

var here = new Lw(words);
console.log(here);
here.find();


/*
var str = "Loop over me!";

// Look at line 8:
// We initialize our counter, set its "while" condition, 
// and give the increment command that should happen 
// after each iteration of the loop -- 
// all in one tight line of code!
for (var i = 0; i < str.length; i++) {
	console.log(str[i]);
}

*/