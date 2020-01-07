class StoredealsController < ApplicationController
  before_action :set_storedeal, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate, only: [:show, :index, :hashtags]
  respond_to :js, :json, :html
  skip_authorization_check only: :hashtags
  load_and_authorize_resource except: :hashtags
  impressionist actions: [:show], unique: [:ip_address]

  # GET /storedeals
  # GET /storedeals.json
  def index
    if params.has_key?(:sdcategory)
      @sdcategory = Sdcategory.find_by_name(params[:sdcategory])
      @storedeals = Storedeal.where(sdcategory: @sdcategory).order("created_at DESC").page(params[:page]).per_page(48)
    else
      @storedeals = Storedeal.all.order("created_at DESC").page(params[:page]).per_page(48)
    end
    if params[:search]
      @search_term = params[:search]
      @storedeals = @storedeals.search_by(@search_term)
    end
    set_meta_tags title: 'The best deals of Aliexpress,Bestbuy,Walmart,Target',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Discover the best bargain and save money',
                  keywords: 'Aliexpress, Bestbuy, Walmart, Target, deals, promo codes, coupons',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Best Deals & Promotions',
                    description: 'Discover the best bargain and save money',
                    # image: @storedeal.sd_image
                  },
                  og: {
                    title: 'Best Deals & Promotions',
                    description: 'Discover the best bargain and save money',
                    type: 'website',
                    url: 'www.ohigottabuythis.net/promocodes',
                    # image: @storedeal.sd_image
                  }
  end

  # GET /storedeals/1
  # GET /storedeals/1.json
  def show
    impressionist(@storedeal)
    @more_deals = Storedeal.where(sdcategory_id: @storedeal.sdcategory_id).limit(10)
    set_meta_tags title: @storedeal.sd_title,
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: @storedeal.sd_spare_50,
                  keywords: @storedeal.sd_keyword,
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: @storedeal.sd_title,
                    description: @storedeal.sd_spare_50,
                    image: @storedeal.sd_image
                  },
                  og: {
                    title: @storedeal.sd_title,
                    description: @storedeal.sd_spare_50,
                    type: 'website',
                    url: storedeal_url(@storedeal),
                    image: @storedeal.sd_image
                  }
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @storedeals = tag.storedeals
  end

  # GET /storedeals/new
  def new
    @storedeal = Storedeal.new
  end

  # GET /storedeals/1/edit
  def edit
  end

  # POST /storedeals
  # POST /storedeals.json
  def create
    @storedeal = Storedeal.new(storedeal_params)

    respond_to do |format|
      if @storedeal.save
        format.html { redirect_to @storedeal, notice: 'Storedeal was successfully created.' }
        format.json { render :show, status: :created, location: @storedeal }
      else
        format.html { render :new }
        format.json { render json: @storedeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storedeals/1
  # PATCH/PUT /storedeals/1.json
  def update
    respond_to do |format|
      if @storedeal.update(storedeal_params)
        format.html { redirect_to @storedeal, notice: 'Storedeal was successfully updated.' }
        format.json { render :show, status: :ok, location: @storedeal }
      else
        format.html { render :edit }
        format.json { render json: @storedeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storedeals/1
  # DELETE /storedeals/1.json
  def destroy
    @storedeal.destroy
    respond_to do |format|
      format.html { redirect_to storedeals_url, notice: 'Storedeal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storedeal
      @storedeal = Storedeal.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def storedeal_params
      params.require(:storedeal).permit(:sdcategory_id, :sd_title, :sd_description, :sd_image, :sd_link, :sd_image_title, :sd_hashtag,
                                        :sd_coupon_deal, :sd_extra_deal, :sd_banner, :sd_keyword, :sd_promocode, :sd_end_date, :sd_spare_30,
                                        :sd_spare_31, :sd_spare_32, :sd_spare_33, :sd_spare_34, :sd_spare_35, :sd_spare_21, :sd_spare_22,
                                        :sd_spare_23, :sd_percentage, :sd_spare_01, :sd_spare_02, :sd_spare_65, :sd_spare_66, :sd_spare_50)
    end
end


