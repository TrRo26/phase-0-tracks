
// set initial string

// define function that takes a string
function reverse(x) {
// set a variable for the reversed word string
 	var p = '';
// set an initial count and loop over from the end of the string to the beginning 
  	for (var i = x.length - 1; i >= 0; i--)
    	p += x[i];
// print the string
	console.log(p)
}

// call the function
reverse("hello")