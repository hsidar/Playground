
require 'sinatra'
require 'HTTParty'
require 'sinatra/activerecord'
require './environments'

class Lol < ActiveRecord::Base
end

get "/" do
  	erb :"index"
end