class RemoveTypeFromBikes < ActiveRecord::Migration
  def change
    remove_column :bikes, :type, :string
  end
end
