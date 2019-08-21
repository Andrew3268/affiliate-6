class DealsController < ApplicationController

  def promo_codes
      set_meta_tags title: 'Promo Codes on Amazon',
                    site: 'Oh,igottabuythis',
                    revierse: true,
                    description: 'Save money by getting promo codes',
                    keywords: 'promo codes,amazon,coupon,deals',
                    twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'Promo Codes on Amazon',
                    description: 'Save money by getting promo codes',
                    # image: 
                    },
                    og: {
                      title: 'Promo Codes on Amazon',
                      description: 'Save money by getting promo codes',
                      type: 'website',
                      url: 'http://www.ohigottabuythis.net/deals/promo_codes',
                      # image: 
                    }
  end

  def bestdeals
    set_meta_tags title: 'The Best Deals on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Get a good products as a good price',
                  keywords: 'best price,best deals,items,products',
                  twitter: {
                    card: "summary",
                    site: "@OhIgottabuythis",
                    title: 'The Best Deals on Amazon',
                    description: 'Get a good products as a good price',
                    # image: 
                  },
                  og: {
                    title: 'The Best Deals on Amazon',
                    description: 'Get a good products as a good price',
                    type: 'website',
                    url: 'http://www.ohigottabuythis.net/deals/bestdeals',
                    # image: 
                  }
  end

  def promotions
    set_meta_tags title: 'Promotions on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Take promotions, sales, offer, brand deals on Amazon',
                  keywords: 'promotions,sales,offer,brand deals',
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
                  keywords: 'search,quick search,deals,sales',
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
  end

end
