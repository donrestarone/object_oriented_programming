rover_hash = {rover: "x"}
  
def rover_grid
  board_layout = Array.new(10, "|_|").map{|row| Array.new(10, "|_|")}
  row_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  column_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

  print "\t"
  print row_label.join("\t")
  puts
  board_layout.each_with_index do |row, i|
    print column_label[i]
    print "\t"
    print row.join("\t")
    puts
  end
end

puts rover_grid

 