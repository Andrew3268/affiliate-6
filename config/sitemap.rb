# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.ohigottabuythis.net"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end


  # add hotdeals_path, :priority => 0.5, :changefreq => 'daily'
  # Hotdeal.find_each do |hotdeal|
  #   add hotdeal_path(hotdeal), :lastmod => hotdeal.updated_at
  # end

  # add gadgets_path, :priority => 0.5, :changefreq => 'daily'
  # Gadget.find_each do |gadget|
  #   add gadget_path(gadget), :lastmod => gadget.updated_at
  # end

  # add promocodes_path, :priority => 0.5, :changefreq => 'daily'
  # Promocode.find_each do |promocode| 
  #   add promocode_path(promocode), :lastmod => promocode.updated_at, :priority => 0.5
  # end
end
