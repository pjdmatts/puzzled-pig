class AddTrailIdToPoints < ActiveRecord::Migration
  def change
    add_column :points, :trail_id, :integer
    add_index :points, :trail_id
  end
end
