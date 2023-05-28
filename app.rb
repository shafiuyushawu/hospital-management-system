require_relative "./models/patience"
require_relative "./models/save_data"
require_relative "./models/load_data"

class App

  def initialize 
    @patience = LoadData.new.load_patience
  end

  def add_patience

    puts "Enter patience name"
    name = gets.chomp 

    puts "Enter patience age"
    age = gets.chomp

    puts "Enter patience address"
    address = gets.chomp 

    patience = Patience.new(name, age, address)  

    @patience.push(patience)
    
    SaveData.new.save_patience(@patience)
  end

  def list_patience 
    @patience.each.with_index(1) do |patience, i|
      puts "Name: #{patience.name} Age: #{patience.age} address: #{patience.address}"
    end
  end
end
