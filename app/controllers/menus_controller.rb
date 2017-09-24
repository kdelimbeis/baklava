class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      redirect_to @menu
    else
      redirect_to new_menu_path
    end
  end

  def edit
  end

  def show
  end

  def index
    @menus = Menu.all
  end

private
  def menu_params
    params.require(:menu).permit(:name)
  end
end
