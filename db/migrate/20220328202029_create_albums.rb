class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.integer :album_id
      t.string :album_title
    end
  end
end
