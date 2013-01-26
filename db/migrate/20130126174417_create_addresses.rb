class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :fname
      t.string :address1
      t.string :address2
      t.string :zip
      t.string :state_code
      t.string :state
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
