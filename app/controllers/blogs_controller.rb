class BlogsController < ApplicationController

  before_action :find_blog, only: [:blog_01, :blog_02, :blog_03]

  def blog_01
  end

  def blog_02
    @random = *(1..45)
    @lotto = @random.sample(6).sort
  end

  def blog_03
  end

  private

  def find_blog
    @gadgets = Gadget.all.order("created_at DESC").limit(10)
    @recommends = Recommend.all.order("created_at DESC").limit(3)
  end
end
