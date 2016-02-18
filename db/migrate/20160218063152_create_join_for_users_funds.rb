class CreateJoinForUsersFunds < ActiveRecord::Migration
  def change
    create_table :funds_users, id: false do |t|
      t.belongs_to :fund, index: true
      t.belongs_to :user, index: true
    end
  end
end
