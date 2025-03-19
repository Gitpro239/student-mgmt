class Manager < ApplicationRecord
  # has_one :through assosciation example
  belongs_to :department
  has_one :manager_history
end
