class Rate < ActiveRecord::Base
  
  attr_accessible :name, :value, :factor_id
  
  belongs_to  :factor
  
end
