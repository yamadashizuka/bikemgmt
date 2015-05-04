class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :nickname
      t.string :type
      t.text :memo

      t.timestamps
    end
  end
end
