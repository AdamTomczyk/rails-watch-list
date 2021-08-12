class Bookmark < ApplicationRecord
#Relations
  belongs_to :list
  belongs_to :movie

#validations
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
