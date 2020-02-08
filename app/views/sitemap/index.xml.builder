xml.instruct!

xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do
  xml.url do
    xml.loc root_url
    xml.changefreq("hourly")
    xml.priority "1.0"
  end
  @hotdeals.each do |hotdeal|
    xml.url do
      xml.loc hotdeal_url(hotdeal)
      xml.changefreq("daily")
      xml.priority "0.8"
      xml.lastmod hotdeal.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
  @promocodes.each do |promocode|
    xml.url do
      xml.loc promocode_url(promocode)
      xml.changefreq("daily")
      xml.priority "0.8"
      xml.lastmod promocode.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
  @gadgets.each do |gadget|
    xml.url do
      xml.loc gadget_url(gadget)
      xml.changefreq("daily")
      xml.priority "0.8"
      xml.lastmod gadget.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
end