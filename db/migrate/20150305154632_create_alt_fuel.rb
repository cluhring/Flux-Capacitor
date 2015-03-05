class CreateAltFuel < ActiveRecord::Migration
  def change
    create_table :alt_fuels do |t|
      t.string :name
      t.string :description
    end
  end
end
