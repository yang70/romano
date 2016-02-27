class AddConstructionPercentageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :construction_percentage, :integer, default: 0
  end
end
