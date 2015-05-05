
require 'sinatra'
require 'HTTParty'
require './environments'

class Lol

get "/" do
	data = HTTParty.get("https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/battier31841?api_key=")
	data = data.to_json
	data = JSON.parse(data)
	@name = data['battier31841']
	@summoner_id = data['battier31841']['id']
  	erb :"index"
end

end 