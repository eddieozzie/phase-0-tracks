require 'sqlite3'

#create a sql table if one does not exist
db = SQLite3::Database.new("to-dos.db")
db.results_as_hash = true

def create_to_do_db(db)
	create_table = <<-SQL

		CREATE TABLE IF NOT EXISTS todos(
			id INTEGER PRIMARY KEY,
			task VARCHAR(255),
			completed BOOLEAN
		);

	SQL

	db.execute(create_table)
end

#create method for adding a to-do
def add_task(db, task)
	db.execute("INSERT INTO todos(task, completed) VALUES(?,?)",[task, 0])
end

def mark_complete(db, task)
	db.execute("UPDATE todos SET completed=? WHERE task=?", [1, task])
end

def remove_item(db, task)
	#remove given row from db using task name
	db.execute("DELETE FROM todos WHERE task=?",[task])
end

#displays todos in an ordered fashion
def display_table(db, order_by)
	puts "TODOS"
	db.execute("SELECT * FROM todos ORDER BY ?", [order_by]) do |row|
		p row
	end
end

def valid_input(input)
	input == "add" || input == "mark" || input == "delete" 
end

def get_user_option 
	#ask user for desired function and return it
	puts "Would you like to *add*, *mark*, or *delete* items in the table? ('quit' to exit)"
	gets.chomp.downcase
end

def get_item
	print "Enter task name: "
	gets.chomp
end

create_to_do_db(db)

#loop until user exits
loop do
	#ask user for desired function
	response = get_user_option
	
	#break loop if user decides to quit program
	break if response == "quit"
	
	if valid_input response
		#display_table(db, "completed")
		if response == "delete"
			#delete row from table
			item_to_delete = get_item
			remove_item(db, item_to_delete)
		elsif response == "add"
			item_to_add = get_item
			add_task(db, item_to_add)
		elsif response == "mark"
			#update db to mark given item complete
			item_to_mark = get_item
			mark_complete(db, item_to_mark)
		end

	else
		puts "Invalid Input"
	end
		
	
	#ask user for a to-do
	#create a to-do item, add to db
end

#end program
puts "Thanks for using this program!"