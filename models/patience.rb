require_relative './people'

class Patience < People
  attr_accessor :address
  def initialize(name, age, address)
    super(name, age)
  end
end
