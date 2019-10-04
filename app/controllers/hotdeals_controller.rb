class HotdealsController < ApplicationController
  before_action :set_hotdeal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  respond_to :js, :json, :html
  load_and_authorize_resource

  # GET /hotdeals
  # GET /hotdeals.json
  def index
    @hotdeals = Hotdeal.all.order("created_at DESC")
  end

  # GET /hotdeals/1
  # GET /hotdeals/1.json
  def show
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
      @hotdeal = Hotdeal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotdeal_params
      params.require(:hotdeal).permit(:h_title, :h_description, :h_image, :h_link, :h_price, :h_list_price, :h_percentage, :himage,
                                   :h_keyword, :h_spare_01, :h_spare_02, :h_spare_03, :h_spare_04, :h_spare_05, :h_spare_06, :h_spare_07,
                                   :h_spare_08, :h_spare_09, :h_spare_10, :h_spare_11, :h_spare_12, :h_spare_13, :h_spare_14, :h_spare_15,
                                   :h_spare_16, :h_spare_17, :h_spare_18, :h_spare_19, :h_spare_20, :h_spare_21, :h_spare_22, :h_spare_23,
                                   :h_spare_24, :h_spare_25, :h_spare_26, :h_spare_27, :h_spare_28, :h_spare_29, :h_spare_30)
    end
end

