class SubcategoriesController < ApplicationController
  before_action :find_subcategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @subcategories = Subcategory.all.order("created_at DESC")
    if params[:subcategory].blank?
      @gadgets = Gadget.all.order("created_at DESC").page(params[:page]).per_page(50)
    else
      @subcategory_id = Category.find_by(name: params[:subcategory]).id
      @gadgets = Gadget.where(subcategory_id: @subcategory_id).order("created_at DESC").page(params[:page]).per_page(50)
    end
  end

  def show

  end

  def new
    @subcategory = Subcategory.new
  end

  def create
    @subcategory = Subcategory.new(subcategory_params)

    if @subcategory.save
      redirect_to '/subcategories'
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @subcategory.update(subcategory_params)
      redirect_to '/subcategories'
    else
      render 'edit'
    end
  end

  def destroy
    @subcategory.destroy
    redirect_to '/subcategories'
  end

  private

  def find_subcategory
    @subcategory = Subcategory.find(params[:id])
  end

  def subcategory_params
    params.require(:subcategory).permit(:subname)
  end
end
