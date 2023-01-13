require './lib/employee'
require './lib/department'
require './lib/budget'

RSpec.describe Budget do
  let(:soc_budget_2007) { Budget.new(2007) }
  let(:customer_service) { Department.new("Customer Service") }
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }

  describe '#initialize' do
    it 'exists and has attributes' do
      expect(soc_budget_2007).to be_a(Budget)
      expect(soc_budget_2007.year).to eq(2007)
    end
  end

  describe '#add_departments' do
    it 'can add departments and list them' do
      soc_budget_2007.add_departments(customer_service)
      expect(soc_budget_2007.departments).to eq([customer_service])
    end
  end

  describe '#low_expense_departments' do
    it 'can list all of low budget departments' do
      soc_budget_2007.add_departments(customer_service)
      customer_service.expense(100)
      customer_service.expense(25)
      expect(soc_budget_2007.low_expense_departments).to eq([customer_service])
    end
  end

  describe '#add_employees' do
    it 'can add employees to budget' do
      soc_budget_2007.add_employees(bobbi)
      soc_budget_2007.add_employees(aaron)
      expect(soc_budget_2007.employees).to eq([bobbi, aaron])
    end
  end

  describe '#employee_salaries' do
    it 'can return a list of employee_salaries' do
      soc_budget_2007.add_employees(bobbi)
      soc_budget_2007.add_employees(aaron)
      bobbi.give_raise(5000)
      expect(soc_budget_2007.employee_salaries).to eq([105000, 90000])
    end
  end
end