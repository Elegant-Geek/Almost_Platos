class ApplicationController < ActionController::Base
private

  def require_login
    unless current_user
      session[:intended_url] = request.url
      redirect_to new_session_url, alert: "Please log in first!"
    end
  end

  def current_user
    # this new line stores the result of calling User.find in an instance variable, 
    # and only runs the query again if that instance variable doesn't already have a value
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user 
  # ^^allows this method to be a helper method available to ALL view templates
  # ^^ this method had to be defined here tather in the application_helper.rb file 
  # because the require_login method refers to this method which is not accessible to it 
  # unless it is included here in the application controller file!!

  def current_user?(user)
    current_user == user
  end

  helper_method :current_user?
  # ^^allows this method to be a helper method available to ALL view templates

  def require_correct_user
    @user = User.find(params[:id]) #removes duplication for edit update destroy actions!
    redirect_to root_url unless current_user?(@user)
  end

  helper_method :require_correct_user
end