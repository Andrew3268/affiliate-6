class DealsController < ApplicationController

  # def log_impression
  #   @gadget.impressions.create(ip_address: request.remote_ip)
  # end
  

  def promo_codes
      @promocodes = Promocode.all.order("created_at DESC").limit(30)
      @most_promocodes = Promocode.order("impressions_count DESC").limit(10)


      set_meta_tags title: 'Promo Codes, Coupon Codes on Amazon',
                    site: 'Oh,igottabuythis',
                    revierse: true,
                    description: 'This list of Amazon promo codes makes it super easy for you to find great Amazon deals. Save with the verified Amazon coupon codes!! We update this list every single day so come back again for more savings!',
                    keywords: 'promo codes,amazon,coupon,deals,recommend,recommendation,under',
                    twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Promo Codes, Coupon Codes on Amazon',
                    description: 'This list of Amazon promo codes makes it super easy for you to find great Amazon deals. Save with the verified Amazon coupon codes!! We update this list every single day so come back again for more savings!',
                    image: 'https://i.pinimg.com/564x/76/9b/c5/769bc5e3d66dd9b8ffe3d765a70811e7.jpg',
                    },
                    og: {
                      title: 'Promo Codes, Coupon Codes on Amazon',
                      description: 'This list of Amazon promo codes makes it super easy for you to find great Amazon deals. Save with the verified Amazon coupon codes!! We update this list every single day so come back again for more savings!',
                      type: 'website',
                      url: 'http://www.ohigottabuythis.net/deals/promo_codes',
                      image: 'https://i.pinimg.com/564x/76/9b/c5/769bc5e3d66dd9b8ffe3d765a70811e7.jpg'
                    }
  end

  def bestdeals
    @hotdeals = Hotdeal.all.order("created_at DESC").limit(30)
    @most_hotdeals = Hotdeal.order('impressions_count DESC').take(10)
    set_meta_tags title: 'Updated daily with best deals of Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Check out the latest Amazon deals featuring hand-picked deals with low prices on top products updated daily!!',
                  keywords: 'best price,best deals,latest deals,amazon,recommend,recommendation,under',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Updated daily with best deals of Amazon',
                    description: 'Check out the latest Amazon deals featuring hand-picked deals with low prices on top products updated daily!!',
                    image: 'https://i.pinimg.com/564x/af/3b/53/af3b537235cb922e14e546abb7e49e48.jpg',
                  },
                  og: {
                    title: 'Updated daily with best deals of Amazon',
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
                  keywords: 'promotions,sales,offer,brand deals,amazon,recommend,recommendation,under',
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

  def quick_search
    set_meta_tags title: 'Quick Search on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'We offer a quick way to find the best deals. You will find what you are looking for at a great price',
                  keywords: 'search,quick search,deals,sales,amazon,recommend,recommendation,under',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Quick Search on Amazon',
                    description: 'We offer a quick way to find the best deals. You will find what you are looking for at a great price',
                    image: 'https://i.pinimg.com/564x/0a/7c/b6/0a7cb6c6875ed1219e2d39b93307b4f2.jpg',
                  },
                  og: {
                    title: 'Quick Search on Amazon',
                    description: 'We offer a quick way to find the best deals. You will find what you are looking for at a great price',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/quick_search',
                    image: 'https://i.pinimg.com/564x/0a/7c/b6/0a7cb6c6875ed1219e2d39b93307b4f2.jpg'
                  }

  end

  def most_reviewed
    set_meta_tags title: 'Most-Reviewed Products on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'When it comes to deciding whether or not to buy a product, reviews and user feedback are one of the most helpful. 
                                So we’ve done the work for you. ',
                  keywords: 'most reviews,highest reviewed,popular, amazon reviews,recommend,recommendation,under',
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
    @promotion = Storepromotion.where(spcategory_id: 1).limit(5)
    @promotion_with_code = Storepromotion.where(spcategory_id: 2).limit(5)
  end

  def all_deals
    @promocodes = Promocode.all.order("created_at DESC").limit(24)
    @hotdeals = Hotdeal.all.order("created_at DESC").limit(24)
  end


end
