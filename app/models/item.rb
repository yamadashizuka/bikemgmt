class Item < ActiveRecord::Base
  belongs_to :itemtype
  has_many :itemhistories
end
