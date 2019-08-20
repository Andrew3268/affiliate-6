class DealsController < ApplicationController

  def promo_codes
      set_meta_tags title: 'Promo Codes on Amazon',
                    site: 'Oh,igottabuythis',
                    revierse: true,
                    description: 'Save money by getting promo codes',
                    keywords: 'a,b,c,d'
  end

  def bestdeals
    set_meta_tags title: 'The Best Deals on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Save money by getting promo codes',
                  keywords: 'a,b,c,d'
  end

  def promotions
    set_meta_tags title: 'Promotions on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Save money by getting promo codes',
                  keywords: 'a,b,c,d'
  end

  def quick_search
    set_meta_tags title: 'Quick Search on Amazon',
                  site: 'Oh,igottabuythis',
                  revierse: true,
                  description: 'Save money by getting promo codes',
                  keywords: 'a,b,c,d'
  end

end
