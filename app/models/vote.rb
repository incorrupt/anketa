class Vote < ActiveRecord::Base
  
  attr_accessible  :value, :worksheet_id, :depart_id, :factor_id
  
  belongs_to  :worksheet
  belongs_to  :depart
  belongs_to  :factor
  
end
