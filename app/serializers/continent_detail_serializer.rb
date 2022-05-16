class ContinentDetailSerializer < ActiveModel::Serializer
    attributes :id, :picture, :denomination
    
    has_many :cities
    has_many :geographic_icons, through: :cities
end
