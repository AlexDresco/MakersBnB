class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :property_name
      t.date :requested_date
      t.string :user_name

      t.timestamps
    end
  end
end
