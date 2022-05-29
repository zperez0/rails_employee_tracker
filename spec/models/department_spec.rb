require 'rails_helper'

describe Department do
  it { should have_many :employees }
end