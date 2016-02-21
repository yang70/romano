class Project < ActiveRecord::Base
  validates :name, :address, presence: true

  geocoded_by :address
  after_validation :geocode

  has_many :assets
  has_many :funds, -> { uniq}, through: :assets
end
