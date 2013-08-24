class Depart < ActiveRecord::Base
  
  attr_accessible :name, :parent 
  
  has_many :worksheets
  has_many :votes
  
end
