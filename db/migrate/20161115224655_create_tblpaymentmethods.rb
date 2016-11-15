class CreateTblpaymentmethods < ActiveRecord::Migration
  def change
    create_table :tblpaymentmethods do |t|
      t.string :method

      t.timestamps

    end
  end
end
