class Comment < ApplicationRecord
  # Polymorphic assosciation example
  belongs_to :commentable, polymorphic: true
end
