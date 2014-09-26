class StaticController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def dashboard
    return redirect_to "/" if !session[:user]
  end

  def logout
    session[:user] = nil
    redirect_to "/"
  end

  def login_success
    Handshakejs.salt = "46d10310522e16f4a1c7"
    result = Handshakejs.validate({email: params[:email], hash: params[:hash]})

    if result
      session[:user] = params[:email]
      User.find_or_create_by(email: params[:email])
    end

    redirect_to '/dashboard'
  end


  def static_params
    params.require(static).permit(:email, :hash)
  end
end
