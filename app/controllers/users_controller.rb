class UsersController < ApplicationController
  before_action :require_login, except: [:new, :index, :show, :create]
  before_action :edit_correct_account, only: [:edit, :update, :destroy]

    def index
        # @users = User.everyone
        @users  = User.everyone.paginate(:page => params[:page], :per_page=>5)
    end

    def show # USER SHOWPAGE
        # @user = User.find(params[:id])
        @user = User.find(params[:id])
        @favorite_items = @user.favorite_items.paginate(:page => params[:page], :per_page=>3)
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id #automatically signing in the user when they create an account.
          redirect_to @user, notice: "Thanks for signing up!"
        else
          render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        # @user = User.find(params[:id])
        if @user.update(user_params)
          redirect_to @user, notice: "Account successfully updated!"
        else
          render :edit
        end
      end

      def destroy
        # @user = User.find(params[:id])
        if current_user.admin? && current_user?(@user)
          @user.destroy
          session[:user_id] = nil 
          redirect_to login_url, alert: "Your account was successfully deleted!"  #this way no errors occur  
        elsif current_user.admin?
        @user.destroy
        redirect_to root_url, alert: "This user's account was successfully deleted!" 
        else
        @user.destroy
        session[:user_id] = nil
        redirect_to login_url, alert: "Your account was successfully deleted!"  #this way no errors occur  
        end
      end

      private
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :username)
      end


      # moved to applications controller to be re-used efficiently for/on ITEMS
      # def require_correct_user
      #   @user = User.find(params[:id]) #removes duplication for edit update destroy actions!
      #   redirect_to root_url unless current_user?(@user)
      # end

end
