# == Schema Information
#
# Table name: properties
#
#  id            :integer          not null, primary key
#  address       :string           not null
#  age           :integer          not null
#  note          :text             not null
#  property_name :string           not null
#  rent          :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null

class Property < ApplicationRecord
    has_many :nearest_stations, dependent: :destroy
    accepts_nested_attributes_for :nearest_stations, reject_if: :all_blank
  
    validates :address, presence: true
    validates :age, presence: true
    validates :note, presence: true
    validates :property_name, presence: true
    validates :rent, presence: true
  end
  