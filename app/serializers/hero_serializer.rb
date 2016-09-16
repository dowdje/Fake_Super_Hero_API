class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :sex, :height, :age, :hometown
  has_many :powers
end
