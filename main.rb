require './app.rb'

class Main 
  def display_options 
    puts "Welcome to Hospital Management System."
    puts "Please select an option:" 
    puts "1. Add Nurse"
    puts "2. Add Doctor"
    puts "3. Add Patience"
    puts "4. Add Drug" 
    puts "5. Book doctor's appointment"
  end

  def select(options) 
    app = App.new
    case option 
      when "1" 
        app.add_patience
    end 
  end

  def execute_app 
    loop do
      display_options

      option = gets.chomp 
      select(option)
    end

  end
end


def execute 
  main = Main.new 
  main.execute_app
end

execute