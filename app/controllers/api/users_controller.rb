require 'open_uri'

class Api::UsersController < ApplicationController

    def create
        @user = User.new(user_params)
        if @user.save
            signin(@user)
        end
    end

    def user_params
        params.require(:user).permit(:username, :password, :email)
    end
end