class Companion < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :person_id
  
  belongs_to :person
end
