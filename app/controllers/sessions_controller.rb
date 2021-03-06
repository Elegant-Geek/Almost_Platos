class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email_or_username]) ||
               User.find_by(username: params[:email_or_username])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to (session[:intended_url] ||  user_items_url(user)), #redirects to indended OR the user's items
          notice: "Welcome back, #{user.name}!"
          session[:intended_url] = nil
        else
          flash.now[:alert] = "Invalid email/password combination!"
          render :new
        end
      end
  
      def destroy
        session[:user_id] = nil #NOTE how it only makes it NIL again rather than destroying the session user id thing!
        redirect_to login_path, notice: "You're now signed out!"
      end

  end
 