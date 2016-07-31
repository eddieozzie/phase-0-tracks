class TodoList

	def initialize(items)
		@items = items
	end

	def get_items
		@items
	end

	def add_item(item)
		@items.push(item)
	end

	def delete_item(item)
		@items.delete_if{|array_item| array_item == item}
		@items
	end

	def get_item(index)
		@items[index]
	end
end