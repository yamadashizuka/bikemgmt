class CreateItemtypes < ActiveRecord::Migration
  def change
    create_table :itemtypes do |t|
      t.string :name
      t.decimal :limitdistance, :precision => 8, :scale => 3
      t.text :memo

      t.timestamps
    end
  end
end
