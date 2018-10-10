class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :property_name
      t.string :description
      t.integer :price
      t.date :start_date
      t.date :end_date
      t.date :booked_dates # needs to be a separate table to store more than one booked date
      t.integer :user_id #(foreign key) explicit association, newer: t.references :user

      t.timestamps
    end
  end
end
