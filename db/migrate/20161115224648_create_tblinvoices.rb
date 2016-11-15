class CreateTblinvoices < ActiveRecord::Migration
  def change
    create_table :tblinvoices do |t|
      t.date :invoice_prepared
      t.integer :invoice_total
      t.integer :invoice_balance
      t.integer :tenant_id
      t.date :invoice_start
      t.date :invoice_end

      t.timestamps

    end
  end
end
