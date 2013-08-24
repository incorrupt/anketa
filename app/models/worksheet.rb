class Worksheet < ActiveRecord::Base
  
  attr_accessible  :contrib, :ending, :session_id, :depart_id 
  
  belongs_to :depart
  has_many :votes
  
end
