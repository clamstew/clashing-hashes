require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  name = 'Clay Stew'
  "hello #{name}"
end
