class CreateRushingStats < ActiveRecord::Migration
  def change
    create_table :rushing_stats do |t|
      t.string :name
      t.integer :rushing_att
      t.integer :rushing_yards
      t.float :rushing_att_avg
      t.integer :rushing_long
      t.integer :rushing_td

      t.timestamps
    end
  end
end
