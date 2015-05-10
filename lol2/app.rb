# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require 'HTTParty'


class Summoner < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :summoner_id, uniqueness: true
end

get '/' do
  @people = Summoner.all
  erb :"index"
end

get '/posts' do

  data = HTTParty.get("https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/" + params[:summoner] + "?api_key=")
  data = data.to_json
  data = JSON.parse(data)
  summonee = Summoner.new
  summonee.name = data[params[:summoner]]['name']
  summonee.level = data[params[:summoner]]['summonerLevel']
  summonee.summoner_id = data[params[:summoner]]['id']
  summonee.save
  redirect '/'
end