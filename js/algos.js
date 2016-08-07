function getLongest(array)
{
	//create a container for the index of the largest value found so far...
	max = 0;

	//iterate through each of the words in the array
	for(var i = 0; i < array.length; i++)
	{
		if(array[i].length > array[max].length)
		{
			//update the max container with a new index if a longer word is found
			max = i;
		}
	}

	//return the value at the max index
	return array[max]; 
}

function findMatch(object1, object2)
{
	//iterate through object 1's keys
	for(var key in object1)
	{
		//compare object 1's value for each key to object 2's value for the same key
		if(object1[key] == object2[key])
			return true; //if match, return true
	}
	//if after iteration no match, return false
	return false;
}

function generateWords(num_words)
{
	//create a list of valid characters
	validCharacters = ("abcdefghijklmnopqrstuwxyz" . toUpperCase("abcdefghijklmnopqrstuwxyz")).split();

	//repeat this generation for the number of words wanted
		//create a container for the word
		//generate a random length for the word
		//looping once for each character, append a random character to the word




}

//driver code
words = ["alphabet","lettuce","banana pudding"]
console.log("The longest word in " + words + " is " + getLongest(words));

words2 = ["long phrase","longest phrase","longer phrase"]
console.log("The longest word in " + words2 + " is " + getLongest(words2));

findMatch({name: "Steven", age: 55}, {name: "Tamir", age: 54}) ? console.log("Match!") : console.log("No match!");
findMatch({name: "Steven", age: 55}, {name: "Tamir", age: 55}) ? console.log("Match!") : console.log("No match!");