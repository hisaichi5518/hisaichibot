require 'clockwork'

module Hisaichibot
  class Clockwork
    def initialize(m)
      ::Clockwork.manager.config[:message] = m
    end

    def execute
      ::Clockwork::run
    end
  end
end
