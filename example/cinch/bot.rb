require 'cinch'
require 'hisaichibot'

Dir.glob("config/*.rb").each do |file|
  load file
end

bot = Cinch::Bot.new do
  configure do |c|
    c.server   = "localhost"
    c.port     = 6666
    c.user     = "hisaichibot"
    c.password = "password"
    c.channels = ["#hisaichi5518"]
    c.nick     = "hisaichibot"
    c.realname = "hisaichibot"
    c.ssl.use  = true
  end
end

bot.on :join do |m|
  return if m.target.name != "#hisaichi5518"

  Hisaichibot::Clockwork.new(m).execute
end

bot.on :join do |m|
  return if m.target.name != "#hisaichi5518"

  Hisaichibot::TweetStream.new(m).execute
end

bot.on :message, "hisaichibot: ping" do |m|
  Hisaichibot::PingPong.new(m).execute
end

bot.start
