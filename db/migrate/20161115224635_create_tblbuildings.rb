class CreateTblbuildings < ActiveRecord::Migration
  def change
    create_table :tblbuildings do |t|
      t.string :buildingname
      t.string :buildingaddress
      t.string :buildingowner
      t.string :buildingzip
      t.string :buildingcity

      t.timestamps

    end
  end
end
