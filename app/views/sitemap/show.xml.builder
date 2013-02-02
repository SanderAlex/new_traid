
# this procudes the <?xml ... ?> tag at the start of the document
#   note: this is different to calling builder normally as the <?xml?> tag
#         is very different to how you'd write a normal tag!
xml.instruct! :xml, :version => '1.0', :encoding => 'UTF-8'

# create the urlset
xml.urlset :xmlns => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  # photo pages
xml.url do
  xml.loc root_url
end

xml.url do
  xml.loc doc_url
end

xml.url do
  xml.loc payment_url
end

xml.url do
  xml.loc contact_url
end

xml.url do
  xml.loc map_url
end

  @products.each do |product|
    xml.url do # create the url entry, with the specified location and date
      xml.loc product_url(product)
      xml.lastmod product.updated_at.strftime('%Y-%m-%d')
    end
  end


end