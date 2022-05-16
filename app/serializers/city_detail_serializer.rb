class CityDetailSerializer < ActiveModel::Serializer
  attributes :id, :picture, :denomination, :population

  has_many :geographic_icons
  belongs_to :continent
end
