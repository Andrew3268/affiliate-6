class DealsController < ApplicationController

  # def log_impression
  #   @gadget.impressions.create(ip_address: request.remote_ip)
  # end
  

  def promocodes
      @promocodes = Promocode.all.order("created_at DESC").limit(30)
      @most_promocodes = Promocode.order("impressions_count DESC").limit(10)
      set_meta_tags title: 'Amazon Promo Codes & Coupons',
                    site: 'Oh,igottabuythis',
                    revierse: true,
                    description: 'This list of Amazon promo codes makes it super easy for you to find great Amazon deals. Save with the verified Amazon coupon codes!! We update this list every single day so come back again for more savings!',
                    keywords: 'deals, coupons',
                    twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Amazon Promo Codes & Coupons',
                    description: 'This list of Amazon promo codes makes it super easy for you to find great Amazon deals. Save with the verified Amazon coupon codes!! We update this list every single day so come back again for more savings!',
                    image: 'https://i.pinimg.com/564x/76/9b/c5/769bc5e3d66dd9b8ffe3d765a70811e7.jpg',
                    },
                    og: {
                      title: 'Amazon Promo Codes & Coupons',
                      description: 'This list of Amazon promo codes makes it super easy for you to find great Amazon deals. Save with the verified Amazon coupon codes!! We update this list every single day so come back again for more savings!',
                      type: 'website',
                      url: 'http://www.ohigottabuythis.net/deals/promo_codes',
                      image: 'https://i.pinimg.com/564x/76/9b/c5/769bc5e3d66dd9b8ffe3d765a70811e7.jpg'
                    }
  end

  def bestdeals
    @hotdeals = Hotdeal.all.order("created_at DESC").limit(30)
    @most_hotdeals = Hotdeal.order('impressions_count DESC').take(10)
    set_meta_tags title: 'Discover The Best Amazon Deals',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Check out the latest Amazon deals featuring hand-picked deals with low prices on top products updated daily!!',
                  keywords: 'deals, coupons',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Discover The Best Amazon Deals',
                    description: 'Check out the latest Amazon deals featuring hand-picked deals with low prices on top products updated daily!!',
                    image: 'https://i.pinimg.com/564x/af/3b/53/af3b537235cb922e14e546abb7e49e48.jpg',
                  },
                  og: {
                    title: 'Discover The Best Amazon Deals',
                    description: 'Check out the latest Amazon deals featuring hand-picked deals with low prices on top products updated daily!!',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/bestdeals',
                    image: 'https://i.pinimg.com/564x/af/3b/53/af3b537235cb922e14e546abb7e49e48.jpg'
                  }
  end

  def promotions
    set_meta_tags title: 'Promotions on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Take promotions, sales, offer, brand deals on Amazon',
                  keywords: 'deals, coupons',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Promotions on Amazon',
                    description: 'Take promotions, sales, offer, brand deals on Amazon',
                    image: 'https://i.pinimg.com/564x/2f/00/26/2f00260f304d80d222d75dfc7198f7d0.jpg',
                  },
                  og: {
                    title: 'Promotions on Amazon',
                    description: 'Take promotions, sales, offer, brand deals on Amazon',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/promotions',
                    image: 'https://i.pinimg.com/564x/2f/00/26/2f00260f304d80d222d75dfc7198f7d0.jpg'
                  }
  end

  def quicksearch
    set_meta_tags title: 'Amazon Deals & Coupons quick finder and take more bargains',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'It is a discount and a trending item platform. It offers a quick way to find the best deals. You will find what you are looking for at a bargain.',
                  keywords: 'deals, coupons',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Amazon Deals & Coupons quick finder and take more bargains',
                    description: 'It is a discount and a trending item platform. It offers a quick way to find the best deals. You will find what you are looking for at a bargain.',
                    image: 'https://i.pinimg.com/564x/0a/7c/b6/0a7cb6c6875ed1219e2d39b93307b4f2.jpg',
                  },
                  og: {
                    title: 'Amazon Deals & Coupons quick finder and take more bargains',
                    description: 'It is a discount and a trending item platform. It offers a quick way to find the best deals. You will find what you are looking for at a bargain.',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/quick_search',
                    image: 'https://i.pinimg.com/564x/0a/7c/b6/0a7cb6c6875ed1219e2d39b93307b4f2.jpg'
                  }

  end

  def mostreviewed
    set_meta_tags title: 'Most-Reviewed Products on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'When it comes to deciding whether or not to buy a product, reviews and user feedback are one of the most helpful. 
                                So we’ve done the work for you. ',
                  keywords: 'review, deals',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Most-Reviewed Products on Amazon',
                    description: 'When it comes to deciding whether or not to buy a product, reviews and user feedback are one of the most helpful. 
                                So we’ve done the work for you. ',
                    image: 'https://i.pinimg.com/564x/b9/37/7e/b9377e7f26b8703acfebc2cc289306f2.jpg',
                  },
                  og: {
                    title: 'Most-Reviewed Products on Amazon',
                    description: 'When it comes to deciding whether or not to buy a product, reviews and user feedback are one of the most helpful. 
                                So we’ve done the work for you. ',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/most_reviewed',
                    image: 'https://i.pinimg.com/564x/b9/37/7e/b9377e7f26b8703acfebc2cc289306f2.jpg'
                  }
  end

  def stores
    @storepromotions = Storepromotion.all.order("created_at DESC").limit(10)
    # @promotion = Storepromotion.where(spcategory_id: 2).order("created_at DESC").limit(10)
    @most_promotions = Storepromotion.order('impressions_count DESC').take(5)
    @most_deals = Storedeal.order('impressions_count DESC').take(5)
    @sdcategory_01 = Storedeal.where(sdcategory_id: 1).order("created_at DESC").limit(8)
    @sdcategory_02 = Storedeal.where(sdcategory_id: 4).order("created_at DESC").limit(8)
  end

  def all_deals
    @promocodes = Promocode.all.order("created_at DESC").limit(20)
    @hotdeals = Hotdeal.all.order("created_at DESC").limit(20)
    @blog_deals = Hotdeal.all.order("created_at DESC").limit(30)
    @storepromotions = Storepromotion.all.order("created_at DESC").limit(25)
    @insta_promo = Promocode.all.order("created_at DESC").limit(5)
    @insta_hot = Hotdeal.all.order("created_at DESC").limit(5)
    @insta_store = Storepromotion.all.order("created_at DESC").limit(5)
  end


  def new_test
  end


  def store_sales
  end


end
