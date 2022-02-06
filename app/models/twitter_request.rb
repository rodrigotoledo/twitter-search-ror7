require "net/http"
require "uri"
class TwitterRequest
  def self.client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = "SfXfOwoQXJIz1tKAZky4ojZ2y"
      config.consumer_secret     = "P1CvPmqrOH0NriuTNU3rxulrMEbAp2M9tMl31pzBOHtm4OSgPR"
      config.access_token        = "1445083519236124674-VCVnFgTQKgNeUQG9Tv31ZnlOProLBC"
      config.access_token_secret = "MFBt5C0T5lVyanE5wl2eT3Z3KQ7d5HN6Uv5eD86aGOHBl"
    end
  end

  def self.following_me(search_params)
    followers = self.client.followers(search_params)
    followers.attrs[:users]
  end

  def self.timeline(search_params)

    user_timeline = self.client.user_timeline(search_params)
    user_timeline.pluck(:text)
  end

  def self.user(search_params)
    user = self.client.user(search_params)

    {
      user: user.name,
      location: user.location,
      favorites_count: user.favorites_count,
      followers_count: user.followers_count,
      friends_count: user.friends_count
    }
  end

  def self.mentions
    mentions_timeline = self.client.mentions_timeline
    mentions_timeline.pluck(:text)
  end

  def self.recent_searchs
    4.times.map do
      Faker::Lorem.paragraph
    end
  end

  def search(query = nil)

  end
end