class Todo < ApplicationRecord
  validates :description, presence: true
  validates :complete, presence: true
end
