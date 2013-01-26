class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def export_csv
    export_to_csv('user.csv', 'User',["id", "created_at", "updated_at"], options = { :separator=> ','})
  end

end
