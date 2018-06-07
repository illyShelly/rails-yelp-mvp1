class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number # not as integer I would not take spaces,e.x.: 01 would change to 1
      t.string :category

      t.timestamps
    end
  end
end
