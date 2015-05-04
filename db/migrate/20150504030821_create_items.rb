class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :itemtype, index: true
      t.string :nickname
      t.decimal :distance, :precision => 8, :scale => 3
      t.text :memo

      t.timestamps
    end
  end
end
