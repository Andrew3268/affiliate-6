class BlogsController < ApplicationController

  def blog_02
    @random = *(1..45)
    @lotto = @random.sample(7).sort
  end
end
