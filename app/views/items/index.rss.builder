xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "City News RSS"
    xml.description "An RSS feed for the City News sidebar for lawrenceks.org"
    xml.link items_url

    for item in @items
      xml.item do
        xml.title item.title
        xml.link item_url(item)
        xml.pubDate item.created_at.to_s(:rfc822)
        xml.guid item_url(item)
      end
    end
  end
end