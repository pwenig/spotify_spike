class BandsController < ApplicationController

  def index
      @json_data = SpotifyApi.search(params[:search_term])
    end

end

