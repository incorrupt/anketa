class Worksheet < ActiveRecord::Base
  
  attr_accessible  :contrib, :end_date , :session_id, :depart_id 
  
  belongs_to :depart
  has_many :votes
  
  def  ending
    return  Worksheet.where('end_date is not null and id = ?',id).exists?
    
  end
  
end
