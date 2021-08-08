# == Schema Information
#
# Table name: nearest_stations
#
#  id           :integer          not null, primary key
#  route_name   :string           not null
#  station_name :string           not null
#  time         :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  property_id  :integer          not null
#
# Indexes
#
#  index_nearest_stations_on_property_id  (property_id)
#
class NearestStation < ApplicationRecord
    belongs_to :property
  
    validates :route_name, presence: true, on: :update
    validates :station_name, presence: true, on: :update
    validates :time, presence: true, on: :update
  end
  