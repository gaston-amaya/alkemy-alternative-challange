# == Schema Information
#
# Table name: cities
#
#  id           :integer          not null, primary key
#  denomination :string
#  land_size    :float
#  picture      :string
#  population   :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  continent_id :integer          not null
#
# Indexes
#
#  index_cities_on_continent_id  (continent_id)
#
# Foreign Keys
#
#  continent_id  (continent_id => continents.id)
#
class CitySerializer < ActiveModel::Serializer
  attributes :id, :picture, :denomination, :population
end
