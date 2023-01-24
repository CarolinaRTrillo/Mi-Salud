class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @blood_type = @user.blood_type.to_i
  end
end
