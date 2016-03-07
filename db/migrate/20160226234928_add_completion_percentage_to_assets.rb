class AddCompletionPercentageToAssets < ActiveRecord::Migration
  def change
    add_column :assets, :completion_percentage, :integer, default: 0
  end
end
