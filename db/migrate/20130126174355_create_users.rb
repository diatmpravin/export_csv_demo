class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :mobile
      t.string :phone
      t.string :dob
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
