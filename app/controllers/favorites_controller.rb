class FavoritesController < ApplicationController
before_action :require_login

def create
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:item_id])
    @item.favorites.create!(user: current_user)
    redirect_to user_item_path(@user, @item)
end

def destroy
    favorite = current_user.favorites.find(params[:id])
    favorite.destroy
    @user = User.find(params[:user_id])
    @item = @user.items.find(params[:item_id])
    redirect_to user_item_path(@user, @item)
end





end
