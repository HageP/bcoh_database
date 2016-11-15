class CreateTblapartments < ActiveRecord::Migration
  def change
    create_table :tblapartments do |t|
      t.integer :building_id
      t.string :apartmentnumber
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :monthlycost
      t.string :standard_rate
      t.boolean :isactive

      t.timestamps

    end
  end
end
