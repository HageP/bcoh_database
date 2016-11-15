class CreateTbltenants < ActiveRecord::Migration
  def change
    create_table :tbltenants do |t|
      t.string :tenant_first
      t.string :tenant_email
      t.string :tenant_phone

      t.timestamps

    end
  end
end
