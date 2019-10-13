module HotdealsHelper
  def render_with_hashtags(h_spare_05)
    h_spare_05.gsub(/#\w+/){|word| link_to word, "/hotdeals/hashtag/#{word.delete('#')}"}.html_safe
  end 
end
