require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/twitter'

get '/' do
  # @site_title = 'Clay Stew'
  # @show_description = true
  # if params[:flash] != ''
  #   @flash = params[:flash]
  # else 
  #   @flash = nil
  # end
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

  # if params[:tweet_handle] != nil
  
  # else 
  #   params[:flash] = "You Must Provide a Twitter Handle!"
  #   redirect '/'
  # this is a good article on redirection: http://stackoverflow.com/questions/2727979/how-to-do-a-post-redirect-get-using-sinatra
  # end
end

post '/app' do 
  content_type :json 
  "#{params}" 
end 