module Hisaichibot
  class PingPong
    attr_accessor :message
    def initialize(m)
      @message = m
    end

    def execute
      message.reply "pong"
    end
  end
end
