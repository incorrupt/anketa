class Factor < ActiveRecord::Base
  
  attr_accessible :name, :id
  
  has_many :votes
  has_many :rates
  
end
