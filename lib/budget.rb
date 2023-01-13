# require './lib/employee'
# require './lib/department'

class Budget
  attr_reader :year, :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_departments(department)
    departments.push(department)
  end

  def low_expense_departments
   low_budg = departments.map do |department|
      if department.expenses <= 500
        department
      end
    end
    low_budg
  end

  def employee_salaries
    
  end
end