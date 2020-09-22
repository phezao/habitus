class State < ApplicationRecord
  STATES = %w(completed, not_completed)

  belongs_to :habit
end
