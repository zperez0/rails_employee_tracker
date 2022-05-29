require 'rails_helper'

describe Employee do
  it { should belong_to :department }
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(100) }
  it { should have_and_belong_to_many :projects }
end

describe Employee do
  it("titleizes the name of an employee") do
    employee = Employee.create({name: "Bob"})
    expect(employee.name).to eq "Bob"
  end
end