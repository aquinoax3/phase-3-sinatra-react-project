class CreateToplists < ActiveRecord::Migration[6.1]
  def change
    create_table :toplists do |t|
      t.references :users
      t.references :albums
    end
  end
end
