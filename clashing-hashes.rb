require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
# for twitter api
# require 'oauth'

require_relative 'lib/twitter'
# require_relative 'lib/twitter_connect'

get '/' do
  erb :index
end

# Post request for /twitter
post '/twitter' do
  tweet = Twitter::Tweet.new 
  @tweets_list = tweet.tweets
  erb :twitter
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
  # twit_connect = TwitterConnect.new
  # @twit_connect = twit_connect.server_response
  # puts "#{@twit_connect}"
end