class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :home_type
      t.string :room_type
      t.integer :accommodate
      t.string :listing_name
      t.text :summary
      t.string :address
      t.boolean :is_tv
      t.boolean :is_quiet
      t.boolean :is_coffee_tea
      t.boolean :is_snacks
      t.boolean :is_wifi
      t.boolean :is_bw_printing
      t.boolean :is_color_printing
      t.boolean :is_bw_copying
      t.boolean :is_color_copying
      t.boolean :is_pet_friendly
      t.boolean :is_fridge
      t.boolean :is_parking
      t.integer :price
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
