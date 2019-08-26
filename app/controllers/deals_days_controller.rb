class DealsDaysController < ApplicationController

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

end
