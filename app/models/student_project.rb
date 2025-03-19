class StudentProject < ApplicationRecord
  # has_many :through assosciation example
  belongs_to :student
  belongs_to :project
end
