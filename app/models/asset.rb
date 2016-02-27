class Asset < ActiveRecord::Base
  validates_numericality_of :completion_percentage, less_than_or_equal_to: 100, message: "Completion Percentage must be between 0 and 100"
  validates_numericality_of :completion_percentage, greater_than_or_equal_to: 0, message: "Completion Percentage must be between 0 and 100"

  belongs_to :fund
  belongs_to :project
end
