class AddTerrainToPoint < ActiveRecord::Migration
  def change
    add_column :points, :terrain, :string
  end
end
