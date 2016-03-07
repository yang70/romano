class Fund < ActiveRecord::Base
  validates_numericality_of :percent_funded, greater_than_or_equal_to: 0, message: "Percent Funded must be between 0 and 100"
  validates_numericality_of :percent_funded, less_than_or_equal_to: 100, message: "Percent Funded must be between 0 and 100"

  has_many :assets
  has_and_belongs_to_many :users
  has_many :projects, -> { uniq }, through: :assets
end
