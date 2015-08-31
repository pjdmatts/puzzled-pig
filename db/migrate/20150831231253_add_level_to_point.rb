class AddLevelToPoint < ActiveRecord::Migration
  def change
    add_column :points, :level, :string
  end
end
