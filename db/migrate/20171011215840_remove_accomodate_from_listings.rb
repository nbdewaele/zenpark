class RemoveAccomodateFromListings < ActiveRecord::Migration[5.1]
  def change
    remove_column :listings, :accommodate, :string
  end
end
