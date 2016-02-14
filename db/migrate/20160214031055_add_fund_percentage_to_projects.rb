class AddFundPercentageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :fund_percentage, :integer
  end
end
