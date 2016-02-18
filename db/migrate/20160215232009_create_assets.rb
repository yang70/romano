class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.belongs_to :fund, index:true
      t.belongs_to :project, index:true
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
