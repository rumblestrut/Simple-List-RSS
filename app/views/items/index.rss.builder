xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "City News RSS"
    xml.description "An RSS feed for the City News sidebar for lawrenceks.org"
    xml.link posts_url

    for item in @itess
      xml.item do
        xml.title post.title
        xml.description post.url
        xml.pubDate post.posted_at.to_s(:rfc822)
        xml.link post_url(post)
        xml.guid post_url(post)
      end
    end
  end
end