class Feedback < ActiveRecord::Base
  
  attr_accessible  :subject, :contact, :message, :session_id, :name
  
  
end
