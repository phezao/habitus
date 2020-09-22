class Habit < ApplicationRecord
  validates :name, presence: true
  has_many :states
  belongs_to :user
end
