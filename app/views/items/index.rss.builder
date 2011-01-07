xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Simple List Embedding"
    xml.description "An RSS feed for simplelists embedding"
    xml.link items_url

    for item in @items
      xml.item do
        xml.title item.title
        xml.link item.url
        xml.pubDate item.created_at.to_s(:rfc822)
        xml.guid item.url
      end
    end
  end
end