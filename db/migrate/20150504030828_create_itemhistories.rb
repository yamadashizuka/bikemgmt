class CreateItemhistories < ActiveRecord::Migration
  def change
    create_table :itemhistories do |t|
      t.references :item, index: true
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :distance, :precision => 8, :scale => 3
      t.text :memo

      t.timestamps
    end
  end
end
