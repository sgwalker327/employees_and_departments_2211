require './lib/employee'
require './lib/department'
require './lib/budget'

RSpec.describe Budget do
  let(:soc_budget_2007) { Budget.new(2007)}
  let(:customer_service) { Department.new("Customer Service") }
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }
  
  describe "#initialize" do
    it 'exists and has attributes' do
      expect(soc_budget_2007).to be_a(Budget)
      expect(soc_budget_2007.year).to eq(2007)
    end
  end

  describe '#department_list' do
    it 'can list all of its departments' do
      expect(soc_budget_2007.department_list).to eq([customer_service])
    end
  end
end