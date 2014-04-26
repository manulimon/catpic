class SessionsController < ApplicationController
  def new
  end

  def create
    # haetaan namea vastaava käyttäjä tietokannasta
    user = User.find_by_name(params[:name])
    if user.nil? or not user.authenticate params[:password]
      redirect_to :back, notice: "username and password do not match"
    else
      session[:user_id] = user.id unless user.nil?
      redirect_to user, notice: "Welcome back!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end



















