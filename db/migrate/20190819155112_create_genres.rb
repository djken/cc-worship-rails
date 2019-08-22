class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :category
      t.belongs_to :group
      t.timestamps
    end
  end
end
