require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/twitter'

get '/' do
  @site_title = 'Clay Stew'
  @show_description = true
  # "hello #{name}"
  erb :index
end

# Post request for /twitter
post '/twitter' do
  tweet = Twitter::Tweet.new 
  @tweets_list = tweet.tweets
  erb :twitter
end

post '/tweet' do
  erb :tweet
end