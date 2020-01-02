class StorepromotionsController < ApplicationController
  before_action :set_storepromotion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource
  impressionist actions: [:show], unique: [:ip_address]


  # GET /storepromotions
  # GET /storepromotions.json
  def index
    if params.has_key?(:spcategory)
      @spcategory = Spcategory.find_by_name(params[:spcategory])
      @storepromotions = Storepromotion.where(spcategory: @spcategory).order("created_at DESC").page(params[:page]).per_page(30)
    else
      @storepromotions = Storepromotion.all.order("created_at DESC").page(params[:page]).per_page(30)
    end
    if params[:search]
      @search_term = params[:search]
      @storepromotions = @storepromotions.search_by(@search_term)
    end
    set_meta_tags title: 'Take the best deals updated daily',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Take the best offers & promotions with promo codes and coupons',
                  keywords: 'bargain, deals, promo codes, coupons',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Take the best deals updated daily',
                    description: 'Take the best offers & promotions with promo codes and coupons',
                    # image: @hotdeal.h_image
                  },
                  og: {
                    title: 'Take the best deals updated daily',
                    description: 'Take the best deals with promo codes and coupons',
                    type: 'website',
                    url: 'www.ohigottabuythis.net/storepromotions',
                    # image: @hotdeal.h_image
                  }
  end

  # GET /storepromotions/1
  # GET /storepromotions/1.json
  def show
    @more_deals = Storepromotion.where(spcategory_id: @storepromotion.spcategory_id)
    impressionist(@storepromotion)
    set_meta_tags title: @storepromotion.sp_title,
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: @storepromotion.sp_description,
                  keywords: @storepromotion.sp_title,
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: @storepromotion.sp_title,
                    description: @storepromotion.sp_description,
                    image: @storepromotion.sp_image
                  },
                  og: {
                    title: @storepromotion.sp_title,
                    description: @storepromotion.sp_description,
                    type: 'website',
                    url: storepromotion_url(@storepromotion),
                    image: @storepromotion.sp_image
                  }
  end

  # GET /storepromotions/new
  def new
    @storepromotion = Storepromotion.new
  end

  # GET /storepromotions/1/edit
  def edit
  end

  # POST /storepromotions
  # POST /storepromotions.json
  def create
    @storepromotion = Storepromotion.new(storepromotion_params)

    respond_to do |format|
      if @storepromotion.save
        format.html { redirect_to @storepromotion, notice: 'Storepromotion was successfully created.' }
        format.json { render :show, status: :created, location: @storepromotion }
      else
        format.html { render :new }
        format.json { render json: @storepromotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storepromotions/1
  # PATCH/PUT /storepromotions/1.json
  def update
    respond_to do |format|
      if @storepromotion.update(storepromotion_params)
        format.html { redirect_to @storepromotion, notice: 'Storepromotion was successfully updated.' }
        format.json { render :show, status: :ok, location: @storepromotion }
      else
        format.html { render :edit }
        format.json { render json: @storepromotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storepromotions/1
  # DELETE /storepromotions/1.json
  def destroy
    @storepromotion.destroy
    respond_to do |format|
      format.html { redirect_to storepromotions_url, notice: 'Storepromotion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storepromotion
      @storepromotion = Storepromotion.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storepromotion_params
      params.require(:storepromotion).permit(:sp_title, :sp_description, :spcategory_id, :sp_store_name, :sp_image, :sp_storepromotion,
                     :sp_end_date, :sp_percentage_01, :sp_percentage_02, :sp_link, :sp_spare_60, :sp_spare_61, :sp_spare_40, :sp_spare_41,
                     :sp_spare_42, :sp_spare_43, :sp_spare_01, :sp_promocode)
    end
end





