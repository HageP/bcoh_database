class CreateTblpayments < ActiveRecord::Migration
  def change
    create_table :tblpayments do |t|
      t.integer :invoice_id
      t.date :payment_date
      t.integer :payment_amount
      t.integer :paymentmethod_id
      t.integer :tenant_id

      t.timestamps

    end
  end
end
