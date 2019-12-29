class Api::InvestmentsController < ApplicationController

    def create
        @investment = Investment.new(investment_params)
        if @investment.save
            render :calculate
        else
        end
    end

    def destroy
    end

    def index
    end
    
    def calculate
        @total = params[:principal] * (1 + (params[:annual_interest_rate] * params[:num_years]))
        render 'api/accounts/show'
    end

    private
    def investment_params
        params.require(:investment).permit(:company_name,:account_id, :principal, :annual_interest_rate, :num_years)
    end

end