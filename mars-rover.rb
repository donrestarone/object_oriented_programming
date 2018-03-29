# rover_hash = {rover: "x"}
  
# def rover_grid
#   board_layout = Array.new(10, "|_|").map{|row| Array.new(10, "|_|")}
#   row_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
#   column_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

#   print "\t"
#   print row_label.join("\t")
#   puts
#   board_layout.each_with_index do |row, i|
#     print column_label[i]
#     print "\t"
#     print row.join("\t")
#     puts
#   end
# end

# puts rover_grid

class Marsrover
  def initialize(identifier, x, y, direction)
    @x = x
    @y = y
    @direction = direction
    @identifier = identifier
  end 

  def read_instructions
      if @direction == "l"
        p "the rover is moving left"
      elsif @direction == "r"
        p "the rover is moving right"

      elsif @direction == "m"
        p "rover is moving forward"
        
      else 
        p "the rover is not moving in that direction"

      end 
  end 

  def give_instructions(turning_direction)
      if turning_direction == "l"
        @direction = turning_direction
      elsif turning_direction == "r"
        @direction = turning_direction
      else 
        p "error"
        
      end
  end


  def moverover(x_dir, y_dir)
    @x += x_dir
    @y += y_dir

  end 

  def roverstatus 
    status_direction = ""
    if @direction == "l"
      status_direction = "left"
    elsif 
      @direction == "r"
      status_direction = "right"
    end
    puts "#{@identifier} is stationed at x#{@x}, y#{@y} and is facing #{status_direction}"

  end

end

rover1 = Marsrover.new("rover one", 2, 2, "l")
puts "report 1"
puts rover1.roverstatus
puts ""

rover1.give_instructions('r')
puts "report 2"
puts rover1.roverstatus
puts ""

rover1.moverover(2, 2)
puts "report 2"
puts rover1.roverstatus
puts ""






 