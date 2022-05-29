require 'rails_helper'

describe Employee do
  it { should belong_to :department }
end