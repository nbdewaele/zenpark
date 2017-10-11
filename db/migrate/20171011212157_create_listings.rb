class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :listing_name
      t.text :summary
      t.string :address
      t.integer :price
      t.boolean :active
      t.references :user, foreign_key: true
      t.string :print_in_person
      t.string :email_print_pickup
      t.string :email_print_dropoff
      t.string :email_print_mail_off
      t.string :copy
      t.string :photo_print
      t.boolean :is_laser
      t.boolean :is_ink
      t.boolean :is_laminate
      t.boolean :is_blackwhite
      t.boolean :is_color
      t.boolean :is_double_sided
      t.boolean :is_stapled
      t.boolean :is_paperclipped
      t.boolean :is_envelope
      t.boolean :is_manilla
      t.boolean :is_three_hole_punch
      t.string :is_proofing
      t.boolean :is_mailed

      t.timestamps
    end
  end
end
