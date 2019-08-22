class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      # t.string :genre
      # t.string :album
      t.belongs_to :group
      t.timestamps
    end
  end
end
