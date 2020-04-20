class BargainsController < ApplicationController
  before_action :set_bargain, only: [:show, :edit, :update, :destroy]

  # GET /bargains
  # GET /bargains.json
  def index
    if params.has_key?(:barcategory)
      @barcategory = Barcategory.find_by_name(params[:barcategory])
      @bargains = Bargain.where(barcategory: @barcategory).order("created_at DESC").page(params[:page]).per_page(30)
    else
      @bargains = Bargain.all.order("created_at DESC").page(params[:page]).per_page(30)
    end
    if params[:search]
      @search_term = params[:search]
      @bargains = @bargains.search_by(@search_term)
    end
    set_meta_tags title: 'The best featured deals on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Take the best offers & promotions with promo codes and coupons',
                  keywords: 'bargain, deals, promo codes, coupons',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'The best featured deals on Amazon',
                    description: 'Take the best offers & promotions with promo codes and coupons',
                    # image: @hotdeal.h_image
                  },
                  og: {
                    title: 'The best featured deals on Amazon',
                    description: 'Take the best deals with promo codes and coupons',
                    type: 'website',
                    url: 'www.ohigottabuythis.net/bargains',
                    # image: @hotdeal.h_image
                  }
    
  end

  # GET /bargains/1
  # GET /bargains/1.json
  def show
    set_meta_tags title: @bargain.bar_title,
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Take the best offers & promotions with promo codes and coupons',
                  keywords: @bargain.bar_title,
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: @bargain.bar_title,
                    description: 'Take the best offers & promotions with promo codes and coupons',
                    image: @bargain.bar_image
                  },
                  og: {
                    title: @bargain.bar_title,
                    description: 'Take the best offers & promotions with promo codes and coupons',
                    type: 'website',
                    url: bargain_url(@bargain),
                    image: @bargain.bar_image
                  }
  end

  # GET /bargains/new
  def new
    @bargain = Bargain.new
  end

  # GET /bargains/1/edit
  def edit
  end

  # POST /bargains
  # POST /bargains.json
  def create
    @bargain = Bargain.new(bargain_params)

    respond_to do |format|
      if @bargain.save
        format.html { redirect_to @bargain, notice: 'Bargain was successfully created.' }
        format.json { render :show, status: :created, location: @bargain }
      else
        format.html { render :new }
        format.json { render json: @bargain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bargains/1
  # PATCH/PUT /bargains/1.json
  def update
    respond_to do |format|
      if @bargain.update(bargain_params)
        format.html { redirect_to @bargain, notice: 'Bargain was successfully updated.' }
        format.json { render :show, status: :ok, location: @bargain }
      else
        format.html { render :edit }
        format.json { render json: @bargain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bargains/1
  # DELETE /bargains/1.json
  def destroy
    @bargain.destroy
    respond_to do |format|
      format.html { redirect_to bargains_url, notice: 'Bargain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bargain
      @bargain = Bargain.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bargain_params
      params.require(:bargain).permit(:bar_title, :bar_detail, :barcategory_id, :bar_image, :bar_link, :bar_spare_01,
                                      :bar_spare_02)
    end
end


