class SitemapController < ApplicationController
   respond_to :xml
  def index
    @hotdeals = Hotdeal.order("created_at DESC")
    @promocodes = Promocode.order("created_at DESC") 
    @gadgets = Gadget.order("created_at DESC")
  end

end
