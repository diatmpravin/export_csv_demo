class AddressesController < ApplicationController
  
  def index
    @addresses = Address.all
  end

  def export_csv
    export_to_csv('address.csv', 'Address',["id", "created_at", "updated_at"], options = { :separator=> ',', :headers => ["fname"]})
  end
  
end
