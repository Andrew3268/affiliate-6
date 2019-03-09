class HomeController < ApplicationController
  def index
    @gadgets = Gadget.all.order("created_at DESC").page(params[:page]).per(21)
  end



end

