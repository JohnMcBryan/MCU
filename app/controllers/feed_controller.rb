class FeedController < ApplicationController

  require 'twitter'



  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "VUEEw7a6mJFvPw2XEKFaixDmQ"
      config.consumer_secret     = "Ou8J7DCWtpjXEByHU44nolPdCZsKGijYAv3kdSKiizOLzWUvXA"
      config.access_token        = "744931399849803776-CCoXjur2NOJlK72qTbI3sFIlfOSS0Zf"
      config.access_token_secret = "az9JlCtqX8mDeIWu3eyA2hEu0Xp0MMvsNSo2zszNQnqqS"
    end

    @tweets = client.user_timeline('MCU_Tweets', count: 20)
  end

end
