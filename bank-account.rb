class BankAccount 
	def initialize( name, balance, interest_rate) #bank account should have balance and interest_rate attributes
		@balance = balance
		@interest_rate = interest_rate
		@name = name.capitalize

	end 
	
	def deposit(amount)
		@balance += amount
		return @balance
	end 

	def withdraw(amount)
		@balance -= amount
		return @balance
	end 





end 

bob = BankAccount.new('bob',10, 0.005)

puts "Bobs account balance #{bob.inspect}"



bob.deposit(10)
puts "Bobs account balance after deposit #{bob.inspect}"


bob.withdraw(5)

puts "Bobs account balance after withdrawals #{bob.inspect}"
