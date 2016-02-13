class Project < ActiveRecord::Base
  validates :name, :address, presence: true

  geocoded_by :address
  after_validation :geocode
end
