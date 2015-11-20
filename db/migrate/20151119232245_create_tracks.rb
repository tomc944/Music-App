class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.string :recording_type, null: false
      t.text :lyrics, null: false

      t.timestamps
    end

    add_index :tracks, :album_id
  end
end
