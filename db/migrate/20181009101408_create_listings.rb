class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.date :date
      t.date :booked_dates

      t.timestamps
    end
  end
end
