class Department
  attr_reader :name, :employees
  attr_accessor :expenses

  def initialize(name)
    @name = name
    @employees = []
    @expenses = 0
  end

  def hire(employee)
    employees.push(employee)
  end

  def expense(cost)
    @expenses += cost
  end
end