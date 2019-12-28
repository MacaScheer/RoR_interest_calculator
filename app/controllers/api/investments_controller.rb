class Api::InvestmentsController < ApplicationController
    def new
    end

    def create
    end

    def destroy
    end

    def index
    end
    
    def calculate
    
    end

    private
    def investment_params
        params.require(:investment).permit(:company_name,:account_id, :principal, :annual_interest_rate, :num_years)
    end

end