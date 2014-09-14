xml.instruct!

xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do
  xml.url do
    xml.loc root_url
    xml.changefreq("monthly")
    xml.priority "1.0"
  end
  xml.url do
    xml.loc about_url
    xml.changefreq("monthly")
    xml.priority "0.5"
  end
  xml.url do
    xml.loc pomsky_puppies_for_sale_url
    xml.changefreq("monthly")
    xml.priority "0.5"
  end
  xml.url do
    xml.loc breeder_listing_url
    xml.changefreq("monthly")
    xml.priority "0.5"
  end
  @pomsky_breeders.each do |pomsky|  
    xml.url do
      xml.loc pomsky_breeders_url(pomsky)
      xml.changefreq("weekly")
      xml.priority "0.8"
      xml.lastmod pomsky.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
  @husky_breeders.each do |husky|  
    xml.url do
      xml.loc husky_breeders_url(husky)
      xml.changefreq("weekly")
      xml.priority "0.8"
      xml.lastmod husky.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
  @pomeranian_breeders.each do |pomeranian|  
    xml.url do
      xml.loc pomeranian_breeders_url(pomeranian)
      xml.changefreq("weekly")
      xml.priority "0.8"
      xml.lastmod pomeranian.updated_at.strftime("%Y-%m-%dT%H:%M:%S.%2N%:z")
    end
  end
end