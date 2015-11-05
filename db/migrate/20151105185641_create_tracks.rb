class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :length_in_seconds
      t.string :genre

      t.timestamps null: false
    end
  end
end
