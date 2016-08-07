var colors = ["blue", "green", "orange", "red"];
var names = ["Ed", "Michael", "John", "Steve"];

colors.push("pink");
names.push("Bill");

var horses = {}

for(var i = 0; i < colors.length; i++)
{
	horses[names[i]] = colors[i];
}

function Car(brand, model, year, color)
{
	console.log("Constructing car...");

	//initialize
	this.brand = brand;
	this.model = model;
	this.year = year;
	this.color = color;


	this.startEngine = function(){console.log("Vroom...")}

	this.printStats = function(){console.log("Brand: " + this.brand + "\nModel: " + this.model + "\nYear: " + this.year + "\nColor: " + this.color)}


}

accord = new Car("Honda", "Accord", 2007, "gray");
accord.startEngine();
accord.printStats();

console.log("------------");

hummer = new Car("Hummer", "H3", 2000, "yellow");
hummer.startEngine();
hummer.printStats();