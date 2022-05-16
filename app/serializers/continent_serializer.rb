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
class ContinentSerializer < ActiveModel::Serializer
  attributes :id, :picture, :denomination

end
