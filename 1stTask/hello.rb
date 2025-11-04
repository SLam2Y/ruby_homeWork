class Person
  attr_accessor :name, :age 
  def initialize (name, age)
    @name= name
    @age= age
  end

  
  def greet
    puts "Привет, меня зовут #{@name} и мне #{@age} лет"
  end
  p = Person.new("Alice", 25)
  p.greet
end
