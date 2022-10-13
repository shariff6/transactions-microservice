class Api::UsersController < ApplicationController
    skip_before_action :authenticate_request

    def create
        name = params[:name]
        email = params[:email]
        print(user_params)
        user = User.new(user_params)
        if user.save
            render json: user, status: 200 
        else
            render json: user.errors.full_messages
        end
    end
end

private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end