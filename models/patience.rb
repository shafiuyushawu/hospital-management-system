require_relative "people"

class Patience < People 
  def initialize(name, age, address) 
    super(name, age)
  end
end

patience = Patience.new('Queen', 23, 'Kenya')