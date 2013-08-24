class Factor < ActiveRecord::Base
  
  attr_accessible :name
  
  has_many :votes
  has_many :rates
  
end
