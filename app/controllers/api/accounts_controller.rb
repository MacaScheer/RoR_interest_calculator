class Api::AccountsController < ApplicationController

def create
    @accounts = Acount.where(user_id: params[:id])
    
end

def show
end

def update

end

private
def account_params
    params.require(:account).permit(:name, :investment)
end

end