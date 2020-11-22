class CreateSteams < ActiveRecord::Migration[6.0]
  def change
    create_table :steams do |t|
      t.integer :appid
      t.string :name
      t.date :release_date
      t.string :english
      t.string :developer
      t.string :publisher
      t.string :platforms
      t.string :required_age
      t.string :categories
      t.string :genres
      t.string :steamspy_tags
      t.integer :achievements
      t.integer :positive_ratings
      t.integer :negative_ratings
      t.integer :average_playtime
      t.integer :median_playtime
      t.string :owners
      t.decimal :price, precision: 14, scale: 4
      t.text :detailed_description
      t.text :about_the_game
      t.text :short_description
      t.string :header_image
      t.json :screenshots
      t.string :background
      t.json :movies

      t.timestamps
    end
    add_index :steams, :appid
  end
end
