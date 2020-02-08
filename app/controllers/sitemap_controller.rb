class SitemapController < ApplicationController
   respond_to :xml
  def index
    @hotdeals = Hotdeal.order("created_at DESC")
    @promocodes = Promocode.order("created_at DESC") 
    @gadgets = Gadget.order("created_at DESC")
    @recommends = Recommend.order("created_at DESC")
    @storepromotions = Storepromotion.order("created_at DESC")
    @storedeals = Storedeal.order("created_at DESC")
  end

end
