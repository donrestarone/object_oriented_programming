class Paperboy 
	def initialize(name, experience, earnings)
		@name = name 
		@experience = experience
		@earnings = earnings 
	end 

	def quota



	end 
end 

bob = Paperboy.new('bob', 'intermediate', 50)

puts bob.inspect