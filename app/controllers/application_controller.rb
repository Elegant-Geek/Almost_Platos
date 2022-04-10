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
    redirect_to user_items_url(@user), alert: "You may not alter #{@user.name}'s items!" unless current_user?(@user) 
    #redirect to user_items_url 
    # (aka their own list of items. it used to be set to root_url.)
  end

  helper_method :require_correct_user
  # this require_current_user must be in applications controller so items controller 
  # (in addition to users controller) can also use this method for authentication gatekeeping purposes
  # must be signed in in order to view your items, but ALSO must be correct user to show items (aka that
  # is what this method does)

  # (OUTDATED): defining a model-level (for now) method that returns true if user has items.  
  # (UPDATED): moved this to applications controller so it can access the user variable. 
  # @user aspect could not be accessed from item.rb model, so it had to be pushed 
  # up to application controller level.
  def items_any?(user)
    user.items.any?
  end
  helper_method :items_any?
  # I DID THAT

end