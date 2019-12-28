class Api::SessionsController < ApplicationController

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        if @user
            signin(@user)
            render "api/accounts/show"
        else
            render json: ["invalid credentials"], status: :unprocessable_entity
        end
    end

    def destroy
        @user = current_user
        if @user
            signout
            output = {}
        else
            render json: ["nobody signed in"], status: 404
        end
    end


end