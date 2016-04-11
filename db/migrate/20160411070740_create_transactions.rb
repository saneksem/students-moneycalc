class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :amount, null: false, default: 0
      t.integer :user_id, null: false
      t.string :comment

      t.timestamps null: false
    end
  end
end
