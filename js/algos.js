/*
ALGOS EXERCISE

   ==============================================================================
REQUIREMENTS  

	RELEASE 0
	- Write a function that takes an array of words or phrases and returns the 
	  longest word or phrase in the array.
	- Add driver code that tests your function on a few arrays.

	RELEASE 1
	- Write a function that takes two objects and checks to see if the objects
	  share at least one key-value pair. 
	- Add some driver code that tests both outcomes of your function.

	RELEASE 2

*/
// ==============================================================================
// BUSINESS LOGIC

// Create a function that determines the length of elements in an array and returns the longest
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

// Create function that compares key-value pairs and returns true if any match
function Share(objOne, objTwo) {
	console.log("");
	console.log("Objects being compared:", objOne, objTwo);
	console.log("");

	var key1 = Object.keys(objOne);
	var key2 = Object.keys(objTwo);

	for (var i = 0; i < key1.length; i++) {
		if (objOne[key1[i]] == objTwo[key1[i]]) {
			var final1 = true;
		} else { 
			var final2 = false;
		}

		if (final1 || final2 == true) {
			console.log("Found a match: value =", true)
		} else { 
			console.log("Did not find a match: value =", false)
			break
		}
	}
}

// ==============================================================================
// DRIVER CODE

var collection1 = {artist: 'Beatles', popularity: 'low'};
var collection2 = {artist: 'Rolling Stones', popularity: 'high'}

var test = new Share(collection1, collection2)

/*

// Create arrays for release 0
var phrases1 = ["Hi!", "Hello there!", "How are you today!", "Salutations!"];
var phrases2 = ["What an amazingly long sentence!", "This is too short.", "How about this one?"];
var phrases3 = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"]

// Call an instance of the function with the defined arrays
var greetings = new Lw(phrases1);
greetings.find()

var nonsense = new Lw(phrases2);
nonsense.find()

var numbers = new Lw(phrases3)
numbers.find()

*/

// ==============================================================================
// TEMPORARY/REFERENCE CODE
/*

*/


