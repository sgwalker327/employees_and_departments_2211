class Employee
  attr_reader :name, :age 
  attr_accessor :salary

  def initialize(info)
    @name = info[:name]
    @age = info[:age].to_i
    @salary = info[:salary].delete('$').to_i
  end

  def give_raise(raise)
    salary += raise
  end
end
