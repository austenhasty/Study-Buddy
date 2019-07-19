class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized

  def index
    @users = User.all
    render json: @users
  end



  private

  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :username, :password)
  end

end
