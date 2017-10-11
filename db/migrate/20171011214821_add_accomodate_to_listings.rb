class AddAccomodateToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :accommodate, :string
  end
end
