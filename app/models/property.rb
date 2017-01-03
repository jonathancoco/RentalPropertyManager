
class Property < ActiveRecord::Base
  has_many :images, :foreign_key => 'property_id', :class_name => 'PropertyImageLocation'
  has_many :property_attributes, :foreign_key => 'property_id', :class_name => 'PropertyAttribute'

  attachment :image

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates

  validates :location, :available_date, :rent, presence: true

  validates_numericality_of :rent, :greater_than => 0

  def address
    location
  end

end
