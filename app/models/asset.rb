class Asset < ActiveRecord::Base
  validates_numericality_of :completion_percentage, less_than_or_equal_to: 100, message: "Completion Percentage must be between 0 and 100"
  validates_numericality_of :completion_percentage, greater_than_or_equal_to: 0, message: "Completion Percentage must be between 0 and 100"

  belongs_to :fund
  belongs_to :project

  after_commit :update_project, on: [:create, :update]

  private

  def update_project
    if self.project
      project = self.project
      assets = project.assets.all
      total = 0

      assets.each {|asset| total += asset.completion_percentage}
      total_percentage = total.to_f / assets.length.to_f
      project.construction_percentage = total_percentage.floor
      project.save
    end
  end
end
