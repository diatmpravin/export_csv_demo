class User < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :dob, :email, :fname, :lname, :mobile, :phone, :state, :state_code, :zip
end
