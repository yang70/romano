class AddCompletionPecentFundedToFunds < ActiveRecord::Migration
  def change
    add_column :funds, :percent_funded, :integer, default: 0
  end
end
