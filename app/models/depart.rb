class Depart < ActiveRecord::Base
  
  attr_accessible :name, :parent, :id , :type_id
  
  has_many :worksheets
  has_many :votes
  
  def self.childrens
    
    Depart.where(:parent => self.id).count
    
  end
  
end
