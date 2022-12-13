class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :address
      t.string :price
      t.string :beds
      t.string :bath
      t.string :image
      t.string :dimension

      t.timestamps
    end
  end
end
