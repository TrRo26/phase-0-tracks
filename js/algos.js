// ALGOS EXERCISE

// ==============================================================================
// REQUIREMENTS
/*
	[This is a logical reasoning challenge, so try to reason through this based 
	on what you already know, rather than Googling the fanciest solution or 
	looking up built-in sorting functions. Note that "some string".length will 
	do what you expect in JS.]

- Write a function that takes an array of words or phrases and returns the 
longest word or phrase in the array.

- Add driver code that tests your function on a few arrays.
*/
// ==============================================================================
// BUSINESS LOGIC

// Create an array
var phrases1 = ["Hi!", "Hello there!", "How are you today!", "Salutations!"];
var phrases2 = ["What an amazingly long sentence!", "This is too short.", "How about this one?"];
var phrases3 = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]

// Create a function
function Lw(array) {
	// Print out the array of phrases
	console.log("---------------")
	console.log("Your phrases:", array)
	console.log("")

	var long = ""

	// Create function to determine length of each phrase by looping through array
	this.find = function() {
		// Set the number of loops
		for (var i = 0; i < array.length; i++) {
			// Print length of array element
			console.log("Phrase " + (i+1) + " is " + array[i].length + " characters long.");
			// If longer than set variable, re-assign element string to variable
			if ((array[i].length) >= long.length) {
				long = (array[i]);
			}
		}
		// Print the longest phrase
		console.log("")
		console.log("In case you can't count, the longest (or tied for longest) phrase is:", long);
		console.log("---------------")
	}
}

// ==============================================================================
// DRIVER CODE

// Call an instance of the function with the defined array
var greetings = new Lw(phrases1);
greetings.find()

var nonsense = new Lw(phrases2);
nonsense.find()

var numbers = new Lw(phrases3)
numbers.find()


// ==============================================================================
// TEMPORARY/REFERENCE CODE
/*


*/