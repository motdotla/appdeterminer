class StaticController < ApplicationController
  def index
  end

  def dashboard
    return redirect_to "/" if !session[:user]
  end

  def logout
    session[:user] = nil
  end

  def login_success
    Handshakejs.salt = "46d10310522e16f4a1c7"
    result = Handshakejs.validate({email: params[:email], hash: params[:hash]})

    session[:user] = params[:email] if result

    redirect_to '/dashboard'
  end
end
