class BargainsController < ApplicationController
  before_action :set_bargain, only: [:show, :edit, :update, :destroy]

  # GET /bargains
  # GET /bargains.json
  def index
    if params.has_key?(:barcategory)
      @barcategory = Barcategory.find_by_name(params[:barcategory])
      @bargains = Bargain.where(barcategory: @barcategory)
    else
      @bargains = Bargain.all
    end
    
  end

  # GET /bargains/1
  # GET /bargains/1.json
  def show
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
      @bargain = Bargain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bargain_params
      params.require(:bargain).permit(:title, :body, :barcategory_id)
    end
end
