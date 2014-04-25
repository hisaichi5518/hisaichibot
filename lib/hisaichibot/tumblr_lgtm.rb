require "tumblr_client"

module Hisaichibot
  class TumblrLgtm
    def initialize(m, tag)
      @message = m
      @tag     = tag
    end

    def execute
      client = Tumblr::Client.new
      posts  = client.tagged(@tag)

      photo_urls = [];
      posts.each do |post|
        if post["type"] == "photo"
          post["photos"].each do |photo|
            photo_urls << photo["alt_sizes"][1]["url"]
          end
        end
      end

      if photo_urls.length < 1
        messages = [
          '(ヽ´ω`)なかった',
        ]
        @message.reply messages[rand(messages.length)]
      end

      @message.reply "http://hisaichilgtm.herokuapp.com/#{photo_urls[rand(photo_urls.length)]}"
    end
  end
end
