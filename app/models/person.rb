class Person < ApplicationRecord
    validates_presence_of :weight
    validates_presence_of :gender
end
