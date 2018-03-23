class BankAccount 
	def initialize( balance, interest_rate, name) #bank account should have balance and interest_rate attributes
		@balance = balance
		@interest_rate = interest_rate
		@name = name

	end 
	def deposit(amount)
		@balance += amount
		return @balance
	end 


end 

bob = BankAccount.new(10, 0.005, 'bob')

puts bob.inspect

bob.deposit(10)

puts bob.inspect
