class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :band_id, null: false
      t.string :album_name, null: false
      t.string :style, null: false

      t.timestamps
    end
    add_index :albums, :band_id
  end
end
