class AddRefToItemtype < ActiveRecord::Migration
  def change
    add_reference :itemtypes, :bike, index: true
  end
end
