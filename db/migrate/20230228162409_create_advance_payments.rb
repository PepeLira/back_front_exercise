class CreateAdvancePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :advance_payments do |t|
      t.date :date
      t.integer :invoice_n
      t.integer :advance_per
      t.integer :final_price
      t.string :status
      t.string :debtor

      t.timestamps
    end
  end
end
