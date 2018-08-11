class GadgetsController < ApplicationController

  before_action :find_gadget, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @gadgets = Gadget.all.order("created_at DESC")
  end

  def show
  end

  def new
    @gadget = current_user.gadgets.build
  end

  def create
    @gadget = current_user.gadgets.build(gadget_params)
    if @gadget.save
      redirect_to @gadget
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @gadget.update(gadget_params)
      redirect_to @gadget
    else
      render 'edit'
    end
  end

  def destroy
    @gadget.destroy
    redirect_to root_path
  end

  private

  def find_gadget
    @gadget = Gadget.find(params[:id]) 
  end

  def gadget_params
    params.require(:gadget).permit(:gg_title, :gg_url, :gg_img, :gg_youtube01, :gg_youtube02, :gg_bprice, :gg_aprice,
                                   :gg_sales, :gg_source, :gg_intro, :gg_option_01, :gg_option_02, :gg_option_03, :gg_option_04,
                                   :gg_option_05, :gg_option_06, :gg_spare_01, :gg_spare_02, :gg_spare_03, :gg_spare_04,
                                   :gg_spare_05, :gg_spare_06, :gg_spare_07, :gg_spare_08)
  end
end
