class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|

      t.string :name
      t.string :description
      t.string :address
      t.string :image_url
      t.string :status_plat_map_url
      t.string :status
      t.timestamps null: false
    end
  end
end
