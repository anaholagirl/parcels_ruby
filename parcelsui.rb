require './lib/parcels'

def main_menu
  loop do
    puts "Hi! Press 'p' to create a new package. Press 'x' to exit."
    menu_choice = gets.chomp
    if menu_choice == 'p'
      create_package
    elsif menu_choice == 'x'
      puts "bye!"
      exit
    else
      puts "Please enter a valid option."
    end
  end
end

def create_package
  puts "Great! What is the length of your package?"
  length = gets.chomp.to_i
  puts "What is the width of your package?"
  width = gets.chomp.to_i
  puts "What is the height of your package?"
  height = gets.chomp.to_i
  puts "What is the weight of your package?"
  weight = gets.chomp.to_i
  new_parcel = Parcel.new(length, width, height, weight)
  puts "Here are the dimensions of your package: #{new_parcel.length}, #{new_parcel.width}, #{new_parcel.height}, #{new_parcel.weight}."
  puts "The shipping cost of your package is: $#{new_parcel.cost_to_ship}."
end

main_menu

