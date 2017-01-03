class PropertyAttribute < ActiveRecord::Base
  belongs_to :properties

  validates :key, :value, presence: true
end
