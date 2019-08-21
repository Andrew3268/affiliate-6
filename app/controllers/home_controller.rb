class HomeController < ApplicationController
  # def index
  #   @gadgets = Gadget.all.order("created_at DESC").page(params[:page]).per_page(21)
  # end

  # def index_01
  #   @gadgets = Gadget.all.order("created_at DESC").page(params[:page]).per_page(21)
  #   @recommends = Recommend.all.order("created_at DESC").limit(5)
  # end

  def index_02
    @gadgets = Gadget.all.order("created_at DESC").page(params[:page]).per_page(50)
    if params[:search]
      @search_term = params[:search]
      @gadgets = @gadgets.search_by(@search_term)
    end

   set_meta_tags  title: 'The Best Deals, Coupons, Promo Codes, Discounts',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'It is discount platform but also trending item platform | Oh,igottabuythis is here to discover awesome gadgets. Find thousands of Amazon best deals, coupon codes, promotions you love.',
                  keywords: 'gadget,deals,coupon,promo codes,bargains',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'The Best Deals, Coupons, Promo Codes, Discounts',
                    description: 'It is discount platform but also trending item platform | Oh,igottabuythis is here to discover awesome gadgets. Find thousands of Amazon best deals, coupon codes, promotions you love.',
                    # image: "<%=asset_path 'visual_01.jpg' %>"
                  },
                  og: {
                    title: 'The Best Deals, Coupons, Promo Codes, Discounts',
                    description: 'It is discount platform but also trending item platform | Oh,igottabuythis is here to discover awesome gadgets. Find thousands of Amazon best deals, coupon codes, promotions you love.',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net',
                    # image: "<%=asset_path 'visual_01.jpg' %>"
                  }
  end 
end

