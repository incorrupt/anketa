#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :current_anketa 
  
  private
  
  def current_ses
    session.id   
  end
  
  def current_anketa
    Worksheet.find_or_create_by( session_id: session.id ) 
  end 
  
  
end
