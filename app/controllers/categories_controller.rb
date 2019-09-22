class CategoriesController < ApplicationController

  before_action :find_category, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @categories = Category.all.order("created_at DESC")
    set_meta_tags title: 'Categories of awesome gadgets',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Find the coolest itmes we picked from all of the world',
                  keywords: 'gadgets,geeky,home,kitchen,travel,outdoor,smartphone,fashion,recommend,recommendation,under',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Categories of awesome gadgets',
                    description: 'Find the coolest itmes we picked from all of the world',
                    image: 'https://i.pinimg.com/564x/dd/ff/3c/ddff3c48c8c282caf3c7ea0f428df231.jpg',
                  },
                  og: {
                    title: 'Categories of awesome gadgets',
                    description: 'Find the coolest itmes we picked from all of the world',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/categories/',
                    image: 'https://i.pinimg.com/564x/dd/ff/3c/ddff3c48c8c282caf3c7ea0f428df231.jpg'
                  }

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
