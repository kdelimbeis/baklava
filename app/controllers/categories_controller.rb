class CategoriesController < ApplicationController
  def index
    @categories = Menu.find(params[:menu_id]).categories
  end

  def show
  end

  def edit
  end

  def new
    @menu = Menu.find(params[:menu_id])
    @category = Category.new
  end

  def create
    @menu = Menu.find(params[:menu_id])
    @category = @menu.categories.build(category_params)
    if @category.save
      redirect_to menu_categories_path
    else
      redirect_to new_menu_category_path
    end
  end

private
  def category_params
    params.require(:category).permit(:name)
  end
end
