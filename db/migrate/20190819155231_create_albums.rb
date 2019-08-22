class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.date :year
      t.belongs_to :group
      t.timestamps
    end
  end
end
