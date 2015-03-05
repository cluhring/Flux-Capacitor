class CreateAltFuel < ActiveRecord::Migration
  def change
    create_table :alt_fuel do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
