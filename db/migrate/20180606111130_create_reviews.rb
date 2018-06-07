class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references :restaurant, foreign_key: true
      # foreign_key makes connection with restaurant
      t.timestamps
    end
  end
end
