class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]



  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end
  

  def show
       user = User.find(params[:id])
       render json: UserSerializer.new(user)
   end



  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password)
  end

end
