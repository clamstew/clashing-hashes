require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require 'pry'

require_relative 'lib/clashing_hashes_twitter'
require_relative 'lib/follower_clash'

get '/' do
  erb :index
end

# Post request for /twitter
post '/twitter' do
  tweet = ClashingHashesTwitter::Tweet.new 
  @tweets_list = tweet.tweets
  erb :twitter
end

post '/result' do
  @user1 = FollowerClash::User.new(params["login-a"])
  @user2 = FollowerClash::User.new(params["login-b"])
  @result = FollowerClash::Comparer.new(@user1, @user2).compare
  # binding.pry
  erb :result
end

post '/tweet' do
  if params[:twitter_handle] != ''
    @tweet_handle = params[:twitter_handle]
  else 
    @tweet_handle = nil
  end
  erb :tweet
end

post '/app' do 
  content_type :json 
  "#{params}" 
end 

get '/test' do

end