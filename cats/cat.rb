class Cat
	def initialize(name, preferred_food, meal_time)
		@name = name
		@preferred_food = preferred_food
		@meal_time = meal_time
	end

	def eats_at  #feeding time 
		if @meal_time < 12 
			puts "#{@meal_time} AM"
		else 

			puts "#{@meal_time - 12} PM "
			
		end 
	end 
	def meow  #gives information about cats. 
		if @meal_time < 12
			return "my name is #{@name} and i like eating #{@preferred_food} at #{eats_at} AM"
		elsif @meal_time > 12 
			return "My name is #{@name} and I eat #{@preferred_food} at #{ (@meal_time - 12)} PM"
		else 
			return "this is broken"
		end 

	end
	


end 	

tiberius = Cat.new('tiberius', 'kibbles', 19)

tom = Cat.new('tom', 'fish', 19)

puts "cat #{tiberius.inspect}"




puts "cat #{tom.inspect}"



puts tiberius.meow
puts tom.meow

