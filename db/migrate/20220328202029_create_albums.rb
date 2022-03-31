class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :album_title
      t.string :album_cover
      t.string :album_artist
    end
  end
end
