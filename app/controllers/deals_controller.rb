class DealsController < ApplicationController

  def promo_codes
      set_meta_tags title: 'Promo Codes, Coupon Codes on Amazon',
                    site: 'Oh,igottabuythis',
                    revierse: true,
                    description: 'This list of Amazon promo codes makes it super easy for you to find great Amazon deals. Save with the verified Amazon coupon codes!! We update this list every single day so come back again for more savings!',
                    keywords: 'promo codes,amazon,coupon,deals',
                    twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Promo Codes, Coupon Codes on Amazon',
                    description: 'This list of Amazon promo codes makes it super easy for you to find great Amazon deals. Save with the verified Amazon coupon codes!! We update this list every single day so come back again for more savings!',
                    # image: 
                    },
                    og: {
                      title: 'Promo Codes, Coupon Codes on Amazon',
                      description: 'This list of Amazon promo codes makes it super easy for you to find great Amazon deals. Save with the verified Amazon coupon codes!! We update this list every single day so come back again for more savings!',
                      type: 'website',
                      url: 'http://www.ohigottabuythis.net/deals/promo_codes',
                      # image: 
                    }
  end

  def bestdeals
    set_meta_tags title: 'Updated daily with best deals of Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Check out the latest Amazon deals featuring hand-picked deals with low prices on top products updated daily!!',
                  keywords: 'best price,best deals,latest deals,amazon',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Updated daily with best deals of Amazon',
                    description: 'Check out the latest Amazon deals featuring hand-picked deals with low prices on top products updated daily!!',
                    # image: 
                  },
                  og: {
                    title: 'Updated daily with best deals of Amazon',
                    description: 'Check out the latest Amazon deals featuring hand-picked deals with low prices on top products updated daily!!',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/bestdeals',
                    # image: 
                  }
  end

  def bestdeals2
  end

  def promotions
    set_meta_tags title: 'Promotions on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Take promotions, sales, offer, brand deals on Amazon',
                  keywords: 'promotions,sales,offer,brand deals,amazon',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Promotions on Amazon',
                    description: 'Take promotions, sales, offer, brand deals on Amazon',
                    # image: 
                  },
                  og: {
                    title: 'Promotions on Amazon',
                    description: 'Take promotions, sales, offer, brand deals on Amazon',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/promotions',
                    # image: 
                  }
  end

  def quick_search
    set_meta_tags title: 'Quick Search on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'We offer a quick way to find the best deals. You will find what you are looking for at a great price',
                  keywords: 'search,quick search,deals,sales,amazon',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Quick Search on Amazon',
                    description: 'We offer a quick way to find the best deals. You will find what you are looking for at a great price',
                    # image: 
                  },
                  og: {
                    title: 'Quick Search on Amazon',
                    description: 'We offer a quick way to find the best deals. You will find what you are looking for at a great price',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/quick_search',
                    # image: 
                  }

  end

  def most_reviewed
    set_meta_tags title: 'Most-Reviewed Products on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'When it comes to deciding whether or not to buy a product, reviews and user feedback are one of the most helpful. 
                                So we’ve done the work for you. ',
                  keywords: 'most reviews,highest reviewed,popular, amazon reviews',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Most-Reviewed Products on Amazon',
                    description: 'When it comes to deciding whether or not to buy a product, reviews and user feedback are one of the most helpful. 
                                So we’ve done the work for you. ',
                    image: 'https://i.pinimg.com/564x/62/76/c0/6276c0be1f32d32072554f912385770e.jpg',
                  },
                  og: {
                    title: 'Most-Reviewed Products on Amazon',
                    description: 'When it comes to deciding whether or not to buy a product, reviews and user feedback are one of the most helpful. 
                                So we’ve done the work for you. ',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/most_reviewed',
                    # image: 
                  }
  end

end
