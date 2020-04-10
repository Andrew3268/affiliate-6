class PromocodesController < ApplicationController
  before_action :set_promocode, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate, only: [:show, :index, :hashtags]
  respond_to :js, :json, :html
  skip_authorization_check only: :hashtags
  load_and_authorize_resource except: :hashtags
  impressionist actions: [:show], unique: [:ip_address]
  
  # before_filter :log_impression, :only=> [:show]

  # def log_impression
  #   @promocodes = Promocode.friendly.find(params[:id])
  #   # this assumes you have a current_user method in your authentication system
  #   @promocodes.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  # end


  # GET /promocodes
  # GET /promocodes.json
  def index
    @promocodes = Promocode.all.order("created_at DESC").page(params[:page]).per_page(48)
    set_meta_tags title: 'Discover Amazon Promo Codes & Coupons',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Take the best deals with promo codes and coupons',
                  keywords: 'Amazon, deals, promo codes, coupons',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Discover Amazon Promo Codes & Coupons',
                    description: 'Take the best deals with promo codes and coupons',
                    # image: @hotdeal.h_image
                  },
                  og: {
                    title: 'Discover Amazon Promo Codes & Coupons',
                    description: 'Take the best deals with promo codes and coupons',
                    type: 'website',
                    url: 'www.ohigottabuythis.net/promocodes',
                    # image: @hotdeal.h_image
                  }

    if params[:search]
      @search_term = params[:search]
      @promocodes = @promocodes.search_by(@search_term)
    end

    respond_to do |format|
      format.html
      format.js
    end


  end

  # GET /promocodes/1
  # GET /promocodes/1.json
  def show
    impressionist(@promocode)
    set_meta_tags title: @promocode.p_title,
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: @promocode.p_spare_36,
                  keywords: @promocode.p_keyword,
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: @promocode.p_title,
                    description: @promocode.p_spare_36,
                    image: @promocode.p_image
                  },
                  og: {
                    title: @promocode.p_title,
                    description: @promocode.p_spare_36,
                    type: 'website',
                    url: promocode_url(@promocode),
                    image: @promocode.p_image
                  }
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @promocodes = tag.promocodes
  end

  # GET /promocodes/new
  def new
    @promocode = current_user.promocodes.build
  end

  # GET /promocodes/1/edit
  def edit
  end

  # POST /promocodes
  # POST /promocodes.json
  def create
    @promocode = current_user.promocodes.build(promocode_params)

    respond_to do |format|
      if @promocode.save
        format.html { redirect_to @promocode, notice: 'Promocode was successfully created.' }
        format.json { render :show, status: :created, location: @promocode }
      else
        format.html { render :new }
        format.json { render json: @promocode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promocodes/1
  # PATCH/PUT /promocodes/1.json
  def update
    respond_to do |format|
      if @promocode.update(promocode_params)
        format.html { redirect_to @promocode, notice: 'Promocode was successfully updated.' }
        format.json { render :show, status: :ok, location: @promocode }
      else
        format.html { render :edit }
        format.json { render json: @promocode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promocodes/1
  # DELETE /promocodes/1.json
  def destroy
    @promocode.destroy
    respond_to do |format|
      format.html { redirect_to promocodes_url, notice: 'Promocode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promocode
      @promocode = Promocode.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promocode_params
      params.require(:promocode).permit(:p_title, :p_description, :p_image, :p_link, :p_price, :p_list_price, :p_percentage,
                                      :p_image_title, :p_hashtag, :p_coupon_deal, :p_extra_deal, :p_banner, :p_keyword, :p_promocode, :p_end_date,
                                      :p_spare_01, :p_spare_02, :p_spare_03, :p_spare_04, :p_spare_05, :p_spare_06, :p_spare_07,
                                      :p_spare_08 , :p_spare_09, :p_spare_10, :p_spare_11, :p_spare_12, :p_spare_13, :p_spare_14,
                                      :p_spare_15, :p_spare_16, :p_spare_17, :p_spare_18, :p_spare_19, :p_spare_20, :p_spare_21,
                                      :p_spare_22, :p_spare_23, :p_spare_24, :p_spare_25, :p_spare_26, :p_spare_27, :p_spare_28,
                                      :p_spare_29, :p_spare_30, :p_spare_31, :p_spare_32, :p_spare_33, :p_spare_34, :p_spare_35,
                                      :p_spare_36, :p_spare_37, :p_spare_38, :p_spare_39, :p_spare_40, :pimage, :p_spare_50, :p_spare_51,
                                      :p_spare_07, :p_spare_08, :p_spare_54, :p_spare_55, :p_spare_56, :p_spare_57, :p_spare_58, :p_spare_59,
                                      :p_spare_60, :p_spare_61, :p_spare_62, :p_spare_09, :p_spare_52)
    end
end



  