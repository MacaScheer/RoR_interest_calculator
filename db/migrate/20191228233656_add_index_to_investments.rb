class AddIndexToInvestments < ActiveRecord::Migration[5.2]
  def change
    add_index :investments, :account_id
  end
end
