# == Schema Information
#
# Table name: continents
#
#  id           :integer          not null, primary key
#  denomination :string
#  picture      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Continent < ApplicationRecord
    has_many :cities
    has_many :geographic_icons, through: :cities
end
