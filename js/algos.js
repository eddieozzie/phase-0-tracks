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

	//create a container for the words
	words = []

	//create a list of valid characters
	validCharacters = "abcdefghijklmnopqrstuwxyz".split("");

	//repeat this generation for the number of words wanted
	for(var i = 0; i < num_words; i++)
	{
		//create a container for the word
		word = [];
		
		//generate a random length for the word
		length = Math.floor((Math.random() * 10) + 1);

		//looping once for each character, append a random character to the word
		for(var j = 0; j < length; j++)
		{
			//append random character to word
			word.push(validCharacters[Math.floor((Math.random() * 10))]);
		}

		words.push(word.join(""));
	}


	return words;

}

//driver code
words = ["alphabet","lettuce","banana pudding"]
console.log("The longest word in " + words + " is " + getLongest(words));

words2 = ["long phrase","longest phrase","longer phrase"]
console.log("The longest word in " + words2 + " is " + getLongest(words2));

findMatch({name: "Steven", age: 55}, {name: "Tamir", age: 54}) ? console.log("Match!") : console.log("No match!");
findMatch({name: "Steven", age: 55}, {name: "Tamir", age: 55}) ? console.log("Match!") : console.log("No match!");

//repeat testing 10 times
for(var i = 0; i < 10; i++)
{
	//generate an array of 10 words
	var words = generateWords(10);
	//print array of 10 words
	console.log(words);
	//print the longest word in the array of 10 words
	console.log("Longest Word: " + getLongest(words));

	//add padding
	console.log("-------");
}