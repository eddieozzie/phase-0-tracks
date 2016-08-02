//create an empty string container
//add the last character of the given string into the container
//proceed backwards until done, adding each character into the container 


function reverse(string)
{
	var container = ""
	for(var i = (string.length - 1); i >= 0; i--)
	{
		container += string[i];
	}

	return container;

}

var helloReversed = reverse("hello");

if (2 > 1)
{
	console.log(helloReversed);
}