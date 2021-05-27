class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.integer :price
      t.string :address
      t.integer :num_bath, default: 0 
      t.integer :num_bdrms, default: 0 
      t.string :furniture_amt
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
