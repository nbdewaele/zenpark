class AddPaperserviceToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :paper_service, :string
  end
end
