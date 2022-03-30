class CreateToplists < ActiveRecord::Migration[6.1]
  def change
    create_table :toplists do |t|
      t.references :user
      t.references :album
    end
  end
end
