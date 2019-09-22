class PromocodesDaysController < ApplicationController

  before_action :common_meta_tag, only: [:day_01, :day_02, :day_03, :day_04, :day_05, :day_06, :day_07]

  def day_01
  end

  def day_02
  end

  def day_03
  end

  def day_04
  end

  def day_05
  end

  def day_06
  end

  def day_07
  end

  private

  def common_meta_tag
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
end
