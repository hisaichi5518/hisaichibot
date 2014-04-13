TweetStream.configure do |config|
  config.consumer_key       = 'hoge'
  config.consumer_secret    = 'fuga'
  config.oauth_token        = 'piyo'
  config.oauth_token_secret = 'we-i'
  config.auth_method        = :oauth
end
