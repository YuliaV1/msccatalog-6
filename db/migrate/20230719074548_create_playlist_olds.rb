class CreatePlaylistOlds < ActiveRecord::Migration[7.0]
  def change
    create_table :playlist_olds do |t|
      t.references :user, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
