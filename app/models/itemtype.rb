class Itemtype < ActiveRecord::Base
    belongs_to :bike
    has_many :items
end
