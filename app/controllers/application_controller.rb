# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for
  layout 'application'
  
  before_filter :setup_user

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def setup_user
    unless session[:customer_id].blank?
      @logged_in_user = Customer.find(session[:customer_id])
    else
      @logged_in_user = nil
    end
  end
end
