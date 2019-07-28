class BlogsController < ApplicationController

  before_action :find_blog, only: [:blog_01_amz_prime, :blog_02_amz_trial, :blog_03_memorialday]

  def blog_01_amz_prime
  end

  def blog_02_amz_trial
  end

  def blog_03_backtoschool
    
  end

  def blackfridayinjuly
    @random = *(1..45)
    @lotto_1 = @random.sample(6).sort
    @lotto_2 = @random.sample(6).sort
    @lotto_3 = @random.sample(6).sort
    @lotto_4 = @random.sample(6).sort
    @lotto_5 = @random.sample(6).sort
  end


  private

  def find_blog
    @gadgets = Gadget.all.order("created_at DESC").limit(10)
    @recommends = Recommend.all.order("created_at DESC").limit(3)
  end
end
