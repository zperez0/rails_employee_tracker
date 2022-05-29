class Project < ApplicationRecord
  has_belongs_to_many :departments
end