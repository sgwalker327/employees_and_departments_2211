require './lib/employee'

class Budget < Employee
  attr_reader :year, :departments, :employees

  def initialize(year)
    @year = year
    @departments = []
    @employees = []
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

  def add_employees(employee)
    @employees.push(employee)
  end

  def employee_salaries
    salaries = employees.map do |employee|
              employee.salary
    end
    salaries
  end
end