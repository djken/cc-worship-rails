class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :location
      t.text :info

      t.timestamps
    end
  end
end
