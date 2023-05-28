require_relative "app"

class Main
  def display_options
    puts 'Welcome to Hospital Management System.'
    puts 'Please select an option:'
    puts '1. Add Patience'
    puts '2. List Patience'
  end

  def select(option)
    app = App.new
    case option
    when '1'
      app.add_patience
    when '2'
      app.list_patience
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
