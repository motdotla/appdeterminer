class StaticController < ApplicationController
  def index
  end

  def dashboard
  end

  def login_success
    redirect_to '/dashboard'
  end
end
