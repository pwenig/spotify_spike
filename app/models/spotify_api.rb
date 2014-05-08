require 'faraday'
require 'json'

class SpotifyApi < ActiveRecord::Base


  def self.search(search_term)
    response = Faraday.get "http://ws.spotify.com/search/1/track.json?q=#{search_term}"
    @json_data = JSON.parse(response.body)
  end
end


# response = Faraday.get('http://ws.spotify.com/search/1/track.json?q=311')
#
# song_data = JSON.parse(response.body)
#
# @album1 = song_data["tracks"].each do |name|
#   puts name["name"]
