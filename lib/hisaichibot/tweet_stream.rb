require 'tweetstream'

module Hisaichibot
  class TweetStream
    attr_accessor :message
    def initialize(m)
      @message = m
    end

    def execute
      client = TweetStream::Client.new
      client.on(:favorite) do |event|
        message.reply "#{event[:source][:name]} faved: #{event[:target_object][:text]} #{event[:target_object][:user][:screen_name]}"
      end

      client.userstream
    end
  end
end
