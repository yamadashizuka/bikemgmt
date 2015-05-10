class AddTypenameToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :typename, :string
  end
end
