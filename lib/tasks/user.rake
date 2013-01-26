namespace :db do
  desc "Erase and fill, User and Address table"
  task :user => :environment do
    require 'populator'
    require 'random_data'

    [User, Address].each(&:delete_all)

    User.populate 1000 do |user|
      user.fname = Random.firstname
      user.lname = Random.lastname
      user.email = Random.email
      user.mobile = Random.international_phone
	  user.phone = Random.phone
	  user.dob = Random.date
	  user.address1 = Random.address_line_1
	  user.address2 = Random.address_line_2
	  user.zip = Random.zipcode
	  user.state_code = Random.state_code
	  user.state = Random.state_full
	  user.country = Random.country
	  user.city = Random.city
    end
    
    Address.populate 1000 do |address|
      address.fname = Random.firstname
	  address.address1 = Random.address_line_1
	  address.address2 = Random.address_line_2
	  address.zip = Random.zipcode
	  address.state_code = Random.state_code
	  address.state = Random.state_full
	  address.country = Random.country
	  address.city = Random.city
    end
    
  end
end
