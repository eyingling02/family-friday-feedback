class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :yelp_link
      t.string :logo

      t.timestamps null: false
    end
  end
end
