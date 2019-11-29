module StoredealsHelper
  def render_with_sdhashtags(sd_hashtag)
    sd_hashtag.gsub(/#\w+/){|word| link_to word, "/storedeals/sdhashtag/#{word.delete('#')}"}.html_safe
  end 
end
