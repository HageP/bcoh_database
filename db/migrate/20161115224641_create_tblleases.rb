class CreateTblleases < ActiveRecord::Migration
  def change
    create_table :tblleases do |t|
      t.integer :apartment_id
      t.date :lease_start
      t.date :lease_end
      t.integer :daily_rate
      t.integer :tenant_id
      t.string :tenant_last
      t.integer :deposit

      t.timestamps

    end
  end
end
