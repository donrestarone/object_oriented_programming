class Player 
	def initialize(gold_coins, health_points, lives)
		@lives = 5
		@gold_coins = 10
		@health_points = 10
	end 

	def level_up
		@lives += 1 
	end 

	def collect_treasure
		if @gold_coins % 10 == 0 
			level_up
		else 
		@gold_coins += 1 
		end
	end

	def do_battle(damage)  #damage method
		@health_points -= damage
			if @health_points < 1
			@lives -= 1

		else @lives == 0 
			restart

			end 
	end 

	def restart
		@lives = 5
		@gold_coins = 10
		@health_points = 10

	end 

end 

bob = Player.new(10, 10, 5)

#bob.level_up

puts bob.inspect

bob.collect_treasure
puts bob.inspect

bob.do_battle(10)

puts bob.inspect

bob.do_battle(10)
