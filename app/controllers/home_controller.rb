class HomeController < ApplicationController
  def index
    @gadgets = Gadget.all.order("created_at DESC").page(params[:page]).per_page(21)
  end

  def index_01
    @gadgets = Gadget.all.order("created_at DESC").page(params[:page]).per_page(21)
    @recommends = Recommend.all.order("created_at DESC").limit(5)
  end

  def index_02
    @gadgets = Gadget.all.order("created_at DESC").page(params[:page]).per_page(50)
  end 
end

