class BarcategoriesController < ApplicationController
  before_action :set_barcategory, only: [:show, :edit, :update, :destroy]

  # GET /barcategories
  # GET /barcategories.json
  def index
    @barcategories = Barcategory.all
  end

  # GET /barcategories/1
  # GET /barcategories/1.json
  def show
  end

  # GET /barcategories/new
  def new
    @barcategory = Barcategory.new
  end

  # GET /barcategories/1/edit
  def edit
  end

  # POST /barcategories
  # POST /barcategories.json
  def create
    @barcategory = Barcategory.new(barcategory_params)

    respond_to do |format|
      if @barcategory.save
        format.html { redirect_to @barcategory, notice: 'Barcategory was successfully created.' }
        format.json { render :show, status: :created, location: @barcategory }
      else
        format.html { render :new }
        format.json { render json: @barcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barcategories/1
  # PATCH/PUT /barcategories/1.json
  def update
    respond_to do |format|
      if @barcategory.update(barcategory_params)
        format.html { redirect_to @barcategory, notice: 'Barcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @barcategory }
      else
        format.html { render :edit }
        format.json { render json: @barcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barcategories/1
  # DELETE /barcategories/1.json
  def destroy
    @barcategory.destroy
    respond_to do |format|
      format.html { redirect_to barcategories_url, notice: 'Barcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barcategory
      @barcategory = Barcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barcategory_params
      params.require(:barcategory).permit(:name, :description, :display_in_navbar)
    end
end
