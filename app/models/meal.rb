class Meal < ApplicationRecord
  validates_presence_of :type_meal
  validates_presence_of :day_time

  belongs_to :person
end
