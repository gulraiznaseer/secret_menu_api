class SecretMenuItemsController < ApplicationController
  before_action :set_secret_menu_items, only: [:show, :update, :destroy]
  def index
    @secret_menu_items = SecretMenuItem.all
    render json: @secret_menu_items
  end

  def show
    render json: @secret_menu_items
  end

  def create
    @secret_menu_items = SecretMenuItem.create(secret_menu_items_params)
    render json: @secretMenuItem
  end

  def update
    @secret_menu_items.update(secret_menu_items_params)
    render json: @secret_menu_items
  end

  def destroy
    @secret_menu_items.destroy
    render json: @secret_menu_items
  end

  private

  def secret_menu_items_params
    params.require(:secret_menu_items).permit(:menu_name, :restaurant_name, :menu_description )
  end

  def set_secret_menu_items
    @secret_menu_item = SecretMenuItem.find(params[:id])
  end
end
