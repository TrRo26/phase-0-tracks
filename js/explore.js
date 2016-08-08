
// set initial string

// define function that takes a string
function reverse(x) {
// set a variable for the reversed word string
 	var p = '';
// set an initial count and loop over from the end of the string to the beginning 
  	for (var i = x.length - 1; i >= 0; i--)
    	p += x[i];
// print the string
	console.log(p);
	return p
}

// DRIVER CODE

// call the function
var first = (reverse("hello"))

// test for non-five characters
var first = (reverse("hi"))

// test to see if variable prints correctly
console.log(first)

// conditional test
if (first.length == 5) {
	console.log("Your word is 5 characters!");
} else {
	console.log("Your word is NOT 5 characters!");
}

