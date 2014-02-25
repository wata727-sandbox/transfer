class CreateBananas < ActiveRecord::Migration
  def change
    create_table :bananas do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
