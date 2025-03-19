class Cource < ApplicationRecord
    include Validatable
   # has_and_belongs_to_many assosciation example
    has_and_belongs_to_many :students

end
