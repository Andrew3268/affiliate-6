module PromocodesHelper
  def render_with_phashtags(p_hashtag)
    p_hashtag.gsub(/#\w+/){|word| link_to word, "/promocodes/phashtag/#{word.delete('#')}"}.html_safe
  end 
end
