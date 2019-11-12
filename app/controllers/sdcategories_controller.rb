class SdcategoriesController < ApplicationController
  before_action :set_sdcategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  # GET /sdcategories
  # GET /sdcategories.json
  def index
    @sdcategories = Sdcategory.all
  end

  # GET /sdcategories/1
  # GET /sdcategories/1.json
  def show
  end

  # GET /sdcategories/new
  def new
    @sdcategory = Sdcategory.new
  end

  # GET /sdcategories/1/edit
  def edit
  end

  # POST /sdcategories
  # POST /sdcategories.json
  def create
    @sdcategory = Sdcategory.new(sdcategory_params)

    respond_to do |format|
      if @sdcategory.save
        format.html { redirect_to sdcategories_url, notice: 'Sdcategory was successfully created.' }
        format.json { render :show, status: :created, location: @sdcategory }
      else
        format.html { render :new }
        format.json { render json: @sdcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sdcategories/1
  # PATCH/PUT /sdcategories/1.json
  def update
    respond_to do |format|
      if @sdcategory.update(sdcategory_params)
        format.html { redirect_to sdcategories_url, notice: 'Sdcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @sdcategory }
      else
        format.html { render :edit }
        format.json { render json: @sdcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sdcategories/1
  # DELETE /sdcategories/1.json
  def destroy
    @sdcategory.destroy
    respond_to do |format|
      format.html { redirect_to sdcategories_url, notice: 'Sdcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sdcategory
      @sdcategory = Sdcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sdcategory_params
      params.require(:sdcategory).permit(:name, :description, :display_in_navbar, :sdcategoriy_num)
    end
end
