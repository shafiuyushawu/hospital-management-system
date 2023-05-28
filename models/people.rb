class People
  def initialize(name, age)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
  end

  def name 
    @name
  end 

  def age
    @age
  end
end
