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
			console.log("Phrase " + (i + 1) + " is " + array[i].length + " characters long.");
			// If longer than set variable, re-assign element string to variable
			if ((array[i].length) >= long.length) {
				long = (array[i]);
			}
		}
		// Print the longest phrase
		console.log("")
		console.log("In case you can't count, the longest (or tied for longest) phrase is:", long);
		return ""
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
	}
	// If any matches were found return true, otherwise false
	if (final1 || final2 == true) {
		console.log("Found a match: value =", true)
	} else {
		console.log("Did not find a match: value =", false)
	}
}

// Create function that builds array of strings of varying length
function BldArr(int) {
	// Assign alphabet to variable
	var alph = "abcdefghijklmnopqrstuvwxyz";
	// Create array for random words
	var strings = [];
	// Initiate loop of declared number of times
	for (var i = 0; i < int; i++) {
		// Create variable for random word
		var word = "";
		// Generate random number (between 1 and 10)
		var randWL = (Math.floor((Math.random() * 10) + 1));
		// Loop that number of times and add each new character to variable
		for (var x = 0; x < randWL; x++) {
			word = word + alph[Math.floor(Math.random() * alph.length)]; 
		}
		// Add word to array
		strings.push(word)
	}
	// Print array of random words
	console.log(strings);
	return strings
}

// ==============================================================================
// DRIVER CODE

//RELEASE 0
	console.log("------------------------------")
	console.log("RELEASE 0")
	console.log("------------------------------")
	
	// Create arrays for release 0
	var phrases1 = ["Hi!", "Hello there!", "How are you today!", "Salutations!"];
	var phrases2 = ["What an amazingly long sentence!", "This is too short.", "How about this one?"];
	var phrases3 = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten"];

	// Run function with defined arrays to test
	var greetings = new Lw(phrases1);
	greetings.find()
	var nonsense = new Lw(phrases2);
	nonsense.find()
	var numbers = new Lw(phrases3)
	numbers.find()

//RELEASE 1
	console.log("------------------------------")
	console.log("RELEASE 1");
	console.log("------------------------------")
	
	// Define two Objects with multiple key-value pairs to compare
	var collection1 = {artist: 'Beatles', popularity: 'high'};
	var collection2 = {artist: 'Rolling Stones', popularity: 'high'};

	// Run function with defined arrays to test 
	Share(collection1, collection2);

// RELEASE 2
	console.log("------------------------------")
	console.log("RELEASE 2")
	console.log("------------------------------")
	
	// Run function with various integers (# of words in returned array) to test
	BldArr(3);
	BldArr(7);
	BldArr(15);

	// Add driver code that generates & prints array, feeds array to 
	// "longest word" function and prints result (10 times)
	console.log("")
	// Loop 10 times
	for (x = 0; x < 10; x++) {
		// Generate an array
		var ex1 = new BldArr(3);
		// Prints array
		console.log(ex1);
		// Pass array through "longest word" function
		var ex2 = new Lw(ex1);
		// Print longest word
		console.log(ex2.find())
	}

// ==============================================================================


