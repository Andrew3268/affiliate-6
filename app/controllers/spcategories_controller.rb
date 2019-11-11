class SpcategoriesController < ApplicationController
  before_action :set_spcategory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  # GET /spcategories
  # GET /spcategories.json
  def index
    @spcategories = Spcategory.all
  end

  # GET /spcategories/1
  # GET /spcategories/1.json
  def show
  end

  # GET /spcategories/new
  def new
    @spcategory = Spcategory.new
  end

  # GET /spcategories/1/edit
  def edit
  end

  # POST /spcategories
  # POST /spcategories.json
  def create
    @spcategory = Spcategory.new(spcategory_params)

    respond_to do |format|
      if @spcategory.save
        format.html { redirect_to @spcategory, notice: 'Spcategory was successfully created.' }
        format.json { render :show, status: :created, location: @spcategory }
      else
        format.html { render :new }
        format.json { render json: @spcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spcategories/1
  # PATCH/PUT /spcategories/1.json
  def update
    respond_to do |format|
      if @spcategory.update(spcategory_params)
        format.html { redirect_to @spcategory, notice: 'Spcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @spcategory }
      else
        format.html { render :edit }
        format.json { render json: @spcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spcategories/1
  # DELETE /spcategories/1.json
  def destroy
    @spcategory.destroy
    respond_to do |format|
      format.html { redirect_to spcategories_url, notice: 'Spcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spcategory
      @spcategory = Spcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spcategory_params
      params.require(:spcategory).permit(:name, :spc_description, :display_in_navbar, :spc_category_num)
    end
end
