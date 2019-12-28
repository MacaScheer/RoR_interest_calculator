class Accounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :user_id, null: false
      t.timestamps
    end
  end
end
