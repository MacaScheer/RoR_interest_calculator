class Investments < ActiveRecord::Migration[5.2]
  def change
    create_table :investments do |t|
      t.string :company_name, null: false
      t.integer :principal, null: false
      t.integer :annual_interest_rate, null: false
      t.integer :num_years, null: false
      t.integer :account_id, null: false
      t.timestamps
  end
end
end
