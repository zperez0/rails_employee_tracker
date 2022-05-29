require 'rails_helper'

describe Department do
  it { should have_many :employees }
  it { should validate_presence_of :name }
  it { should validate_length_of(:name).is_at_most(100) }
  it { should have_and_belong_to_many :projects }
end

describe Department do
  it("titleizes the name of an department") do
    department = Department.create({name: "Tech"})
    expect(department.name).to eq "Tech"
  end
end