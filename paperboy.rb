class Paperboy 
	def initialize(name, experience, earnings)
		@name = name 
		@experience = experience 
		@earnings = earnings 

		@minimum = 50
		@number_of_del = 0
	end 

	def quota
		# @experience += 1 
		@minimum = (@experience / 2) + 50  
		
		return @minimum
	end 

	def deliver(start_address, end_address)
		@experience += 1 + (start_address - end_address).abs #+1 to count the first house
		@number_of_del = 1+ (start_address - end_address).abs #+1 to count the first house
		@earnings += @number_of_del * 0.25
			if @number_of_del > @minimum
				@earnings += (number_of_del - @minimum) * 0.50 
				return @earnings



			end
	end 

	def report 
		p "my name is #{@name} and I made #{@number_of_del} delivaries and earned $#{@earnings} "
	end 
end 


#testing 
#methodology. 
#variable name bob. starting arguments ('bob', 150, 0)
#make 10 delivaries 
#check quota twice 



bob = Paperboy.new('bob', 50, 0)

puts bob.inspect

bob.deliver(1, 10)
 bob.quota


bob.deliver(1, 10)
puts bob.inspect
 
 bob.quota

bob.deliver(1, 10)
puts bob.inspect

 
 bob.quota

bob.deliver(1, 10)
puts bob.inspect

puts bob.report