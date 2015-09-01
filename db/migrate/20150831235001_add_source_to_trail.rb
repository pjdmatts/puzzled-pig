class AddSourceToTrail < ActiveRecord::Migration
  def change
    add_column :trails, :source, :string
  end
end
