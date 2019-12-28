class Investment < ApplicationRecord
    validates :principal, :annual_interest_rate, :num_years, :company_name
    belongs_to :account
    
end