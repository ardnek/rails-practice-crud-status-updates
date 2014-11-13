class StatusUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
    t.string :status
    t.string :user
    t.integer :likes
  end
end
end
