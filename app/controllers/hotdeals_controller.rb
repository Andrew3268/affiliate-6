class HotdealsController < ApplicationController
  before_action :set_hotdeal, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate, only: [:show, :index, :hashtags]
  respond_to :js, :json, :html
  skip_authorization_check only: :hashtags
  load_and_authorize_resource except: :hashtags
  impressionist actions: [:show], unique: [:ip_address]
  # before_filter :log_impression, :only=> [:show]

  # def log_impression
  #   @hotdeals = Hotdeal.friendly.find(params[:id])
  #   this assumes you have a current_user method in your authentication system
  #   @hotdeals.impressions.create(ip_address: request.remote_ip,user_id:current_user.id)
  # end


  # GET /hotdeals
  # GET /hotdeals.json
  
  def index
    @hotdeals = Hotdeal.all.order("created_at DESC").page(params[:page]).per_page(48)
    set_meta_tags title: 'Amazon Deals & Bargain',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Find the best bargain on Amazon and save money',
                  keywords: 'Amazon, deals, bargain',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Amazon Deals & Bargain',
                    description: 'Find the best bargain on Amazon and save money',
                    # image: @hotdeal.h_image
                  },
                  og: {
                    title: 'Amazon Deals & Bargain',
                    description: 'Find the best bargain on Amazon and save money',
                    type: 'website',
                    url: 'www.ohigottabuythis.net/hotdeals',
                    # image: @hotdeal.h_image
                  }
    
    if params[:search]
      @search_term = params[:search]
      @hotdeals = @hotdeals.search_by(@search_term)
    end

    respond_to do |format| 
      format.js
      format.html
    end
    

  end

  # GET /hotdeals/1
  # GET /hotdeals/1.json
  def show
    # @most_hotdeals = Hotdeal.order("impressions_count DESC").limit(10)
    impressionist(@hotdeal)
    set_meta_tags title: @hotdeal.h_title,
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: @hotdeal.h_spare_21,
                  keywords: @hotdeal.h_keyword,
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: @hotdeal.h_title,
                    description: @hotdeal.h_spare_21,
                    image: @hotdeal.h_image
                  },
                  og: {
                    title: @hotdeal.h_title,
                    description: @hotdeal.h_spare_21,
                    type: 'website',
                    url: hotdeal_url(@hotdeal),
                    image: @hotdeal.h_image
                  }
  end

  def hashtags
    tag = Tag.find_by(name: params[:name])
    @hotdeals = tag.hotdeals
  end


  # GET /hotdeals/new
  def new
    @hotdeal = current_user.hotdeals.build
  end

  # GET /hotdeals/1/edit
  def edit
  end

  # POST /hotdeals
  # POST /hotdeals.json
  def create
    @hotdeal = current_user.hotdeals.build(hotdeal_params)

    respond_to do |format|
      if @hotdeal.save
        format.html { redirect_to @hotdeal, notice: 'Hotdeal was successfully created.' }
        format.json { render :show, status: :created, location: @hotdeal }
      else
        format.html { render :new }
        format.json { render json: @hotdeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotdeals/1
  # PATCH/PUT /hotdeals/1.json
  def update
    respond_to do |format|
      if @hotdeal.update(hotdeal_params)
        format.html { redirect_to @hotdeal, notice: 'Hotdeal was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotdeal }
      else
        format.html { render :edit }
        format.json { render json: @hotdeal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotdeals/1
  # DELETE /hotdeals/1.json
  def destroy
    @hotdeal.destroy
    respond_to do |format|
      format.html { redirect_to hotdeals_url, notice: 'Hotdeal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotdeal
      @hotdeal = Hotdeal.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotdeal_params
      params.require(:hotdeal).permit(:h_title, :h_description, :h_image, :h_link, :h_price, :h_list_price, :h_percentage, :himage,
                                   :h_keyword, :h_spare_01, :h_spare_02, :h_spare_03, :h_spare_04, :h_spare_05, :h_spare_06, :h_spare_07,
                                   :h_spare_08, :h_spare_09, :h_spare_10, :h_spare_11, :h_spare_21, :h_spare_41, :h_spare_42, :h_spare_43, 
                                   :h_spare_44, :h_spare_45, :h_spare_12, :h_spare_13, :h_spare_14, :h_spare_15, :h_spare_16, :h_spare_17,
                                   :h_spare_61, :h_spare_62, :h_spare_63, :h_spare_64, :h_spare_65, :h_spare_66, :h_spare_67, :h_spare_68, :h_spare_69)
    end
end


