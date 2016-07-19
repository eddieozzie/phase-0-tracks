application = {

	:name => "John Doe",
	:email => "jdoe@doe.com",
	:ss_num => 2343212,
	:age => 25, 
	:licensed => false
}

application2 = {
	name: "Jim Doe",
	email: "mrdoe@gmail.com",
	ss_num: 23423442,
	age: 33,
	licensed: true
}

application[:hired] = false
application2[:hired] = true

p application, application2