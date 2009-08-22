class CustomerController < ApplicationController
  def login 
    customer = Customer.authenticate(params[:name], params[:password]) 
    if customer 
      session[:customer_id] = customer.id
    else
      flash[:error] = "Invalid email/password combination" 
    end 
    redirect_to '/'
  end
    
  def logout 
    flash[:notice] = "Your ID param was:" + params[:id]
    if params[:id].to_i == session[:identity_id].to_i
      last_request = session[:last_request]
      session[:identity_id] = nil
      session[:is_admin] = nil
      session[:is_moderator] = nil
      session[:login_id] = nil
      session[:pending_new_design] = nil
      session[:pending_rating] = nil
      flash[:notice] = "You are now logged out, thanks for visiting!"
    else
      flash[:error] = "Whoops, there was a problem with that request."
    end  
    redirect_to '/'
  end
  
  def remove_deposit
    Deposit.destroy(params[:id])
    redirect_to '/'
  end
  
  def remove_purchase
    Purchase.destroy(params[:id])
    redirect_to '/'
  end
end
