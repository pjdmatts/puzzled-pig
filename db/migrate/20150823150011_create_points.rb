class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :name
      t.integer :step

      t.timestamps null: false
    end
  end
end
