class Person < ApplicationRecord
    validates_presence_of :weight
    validates_presence_of :gender

    has_many :meals
    has_one :companion
end