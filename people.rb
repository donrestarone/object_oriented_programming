class Person 
	
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end 

	def print_full_name 
		p "hi my name is #{@first_name}, #{@last_name}"
	end 

end 


class Teacher < Person
	
	def initialize(first_name, last_name)
		super(first_name, last_name)
	end

	def teach 
		"everything in ruby is an object"
	end 

	def my_name
		"i am a teacher and my name is #{@first_name}, #{@last_name}"

	end
end 

class Student < Person
	
	def initialize(first_name, last_name)
		super(first_name, last_name)
	end
	
	def learn 
		"i get it!"

	end 

	def my_name
		"i am a student and my name is #{@first_name}, #{@last_name}"

	end
end 

#testing 
nadia = Teacher.new('nadia', 'NADIA')

chris = Student.new('chris', 'christopher')

puts nadia.my_name
puts chris.my_name



