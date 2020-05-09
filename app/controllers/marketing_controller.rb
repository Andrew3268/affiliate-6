class MarketingController < ApplicationController
  
  def insta
    @insta_promo = Promocode.all.order("created_at DESC").limit(20)
    @insta_hot = Hotdeal.all.order("created_at DESC").limit(20)
    @insta_store = Storepromotion.all.order("created_at DESC").limit(20)
  end

  def amz_deal_e
    @promocodes = Promocode.all.order("created_at DESC").limit(20)
    @hotdeals = Hotdeal.all.order("created_at DESC").limit(20)
  end

  def bystore
    @storepromotions = Storepromotion.all.order("created_at DESC").limit(30)
  end

  def featured
    @bargains = Bargain.all.order("created_at DESC").limit(20)
  end

  def be_rich
    @random = *(1..45)
    @lottery = @random.sample(6).sort
  end

end
