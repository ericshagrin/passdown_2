class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.integer :apartment_id
      t.string :picture

      t.timestamps
    end
  end
end
