class Hero < ApplicationRecord
  has_and_belongs_to_many :powers
end
