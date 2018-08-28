class GadgetsController < ApplicationController

  before_action :find_gadget, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :log_impression, :only=> [:show]

  def log_impression
    @gadget.impressions.create(ip_address: request.remote_ip)
    # @gadget.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  end

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

  def find_impression
    @gadget = Curation.find(params[:id])
  end

  def gadget_params
    params.require(:gadget).permit(:gg_title, :gg_url, :gg_img, :gg_youtube01, :gg_youtube02, :gg_bprice, :gg_aprice,
                                   :gg_sales, :gg_from, :gg_intro, :gg_option_01, :gg_option_02, :gg_option_03, :gg_option_04,
                                   :gg_option_05, :gg_option_06, :gg_spare_01, :gg_spare_02, :gg_spare_03, :gg_spare_04,
                                   :gg_spare_05, :gg_spare_06, :gg_spare_07, :gg_spare_08, :gg_summary, :gg_bottomline,
                                   :gg_pro_01, :gg_pro_02, :gg_pro_03, :gg_pro_04, :gg_pro_05, :gg_pro_06, :gg_pro_07, :gg_pro_08,
                                   :gg_pro_09, :gg_pro_10, :gg_con_01, :gg_con_02, :gg_con_03, :gg_con_04, :gg_con_05,
                                   :gg_con_06, :gg_con_07, :gg_source_01, :gg_source_02, :gg_source_03, :gg_source_04, :gg_source_05,
                                   :gg_source_06, :gg_source_07, :gg_source_08, :gg_source_09, :gg_source_10)
  end
end


