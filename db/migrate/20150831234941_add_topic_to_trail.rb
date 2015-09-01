class AddTopicToTrail < ActiveRecord::Migration
  def change
    add_column :trails, :topic, :string
  end
end
