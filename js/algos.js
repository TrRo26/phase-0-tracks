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
	- Write a function that takes an integer for length, and builds and returns an 
	  array of strings of the given length.
	- Add driver code that does the following 10 times: generates an array, 
	  prints the array, feeds the array to your "longest word" function, and prints 
	  the result.

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
	// Print objects
	console.log("");
	console.log("Objects being compared:", objOne, objTwo);
	console.log("");

	// Assign object key names to an array
	var key1 = Object.keys(objOne);
	var key2 = Object.keys(objTwo);

	// Initiate loop and determine number of times to loop
	for (var i = 0; i < key1.length; i++) {
		// Compare key-value pairs of Object using arrays
		if (objOne[key1[i]] == objTwo[key1[i]]) {
		// Assign boolean for result of each comparison
			var final1 = true;
		} else { 
			var final2 = false;
		}
		// If any matches were found return true, otherwise false
		if (final1 || final2 == true) {
			console.log("Found a match: value =", true)
		} else { 
			console.log("Did not find a match: value =", false)
			break
		}
	}
}

// Create function that builds array of strings of varying length
function BldArr(int) {
	// Assign random number between 1 and 26 to variable
	var randAlph = (Math.floor((Math.random() * 26) + 1));
	// Assign random number between 1 and 10 to variable
	var randWL = (Math.floor((Math.random() * 10) + 1));
	var alph = "abcdefghijklmnopqrstuvwxyz";
	var strings = []
	var word = ""

	// Loop through alphabet random number of times between 1 and 10, choosing a letter each time

	/*
	For (var i = 0, i < int, i++) {
		For (var i = 0, i < randWL, i++) {
			var word = randAlph + randAlph
		}
	}
*/
	console.log(randWL)
	console.log(alph[randAlph])
	
	//alph[randAlph]
}


/*
- Write a function that takes an integer for length, and builds and returns an 
array of strings of the given length. 
So if we ran your function with an argument of 3, we would get an array of 
3 random words back (the words don't have to be actual sensical English words 
-- "nnnnfph" totally counts). The words should be of randomly varying length, 
with a minimum of 1 letter and a maximum of 10 letters. (This involves a new 
trick, generating a random number, that you'll have to look up, but the solution 
on how to do so is relatively straightforward.)

- Add driver code that does the following 10 times: generates an array, 
prints the array, feeds the array to your "longest word" function, and prints 
the result.

*/

// ==============================================================================
// DRIVER CODE

// RELEASE 2

what = new BldArr(3)


/* 
RELEASE 0

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


RELEASE 1

// Define two Objects with multiple key-value pairs to compare
var collection1 = {artist: 'Beatles', popularity: 'low'};
var collection2 = {artist: 'Rolling Stones', popularity: 'high'}

// Create a new instance of Share to test the function
var test = new Share(collection1, collection2)

*/

// ==============================================================================


