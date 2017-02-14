class Movie < ApplicationRecord
  validates :director_id, :title, presence: true
  validates :title, uniqueness: { scope: :year }
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1870, less_than_or_equal_to: 2050 }
  validates :duration, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2764800 }
end
