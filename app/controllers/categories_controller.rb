class CategoriesController < ApplicationController

  before_action :find_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @categories = Category.all.order("created_at DESC")
  end

  def show
  end

  def new
    @category = current_user.categories.build
  end

  def create
    @category = current_user.categories.build(category_params)
      if @category.save
        redirect_to '/categories'
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to '/categories'
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
      redirect_to '/categories'
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :category_id)
  end
end
