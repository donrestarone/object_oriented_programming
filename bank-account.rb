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

puts bob.inspect

bob.withdraw(10)

puts bob.inspect


