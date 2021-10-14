class CreateLyrics < ActiveRecord::Migration[6.1]
  def change
    create_table :lyrics do |t|
      t.string :title
      t.string :artist_name
      t.string :content
      t.string :copyright_name
      t.integer :copyright_year
      t.integer :user_id

      t.timestamps
    end
  end
end
