class News < ApplicationRecord
    # Polymorphic assosciation example
    has_many :Comments, as: :commentable
end
