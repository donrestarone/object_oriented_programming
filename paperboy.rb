class Paperboy 
	def initialize(name, experience, earnings)
		@name = name 
		@experience = experience
		@earnings = earnings 
	end 

	def quota
		minimum =  (@experience / 2) + 50
		return minimum

	end 

	def deliver(start_address, end_address)
	delivaries = (start_address - end_address)
	@earnings = delivaries * 0.25
		if delivaries > minimum
			@earnings = (delivaries - minimum) * 50 
			return 

		end

	end

	def report 
	end 
end 

bob = Paperboy.new('bob', 150, 50)

puts bob.inspect

puts bob.quota

bob.deliver(50, 150)