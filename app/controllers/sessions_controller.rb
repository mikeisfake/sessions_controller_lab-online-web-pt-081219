class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]

    return redirect_to sessions_new_path if !name || name.empty?

    session[:name] = name
    redirect_to root_path
  end

  def destroy
    session.delete :name
  end
end
