require 'open-uri'
require 'json'

class FlatsController < ApplicationController
  before_action :get_flats

  def index

  end

  def show
    @flat = params[:id].to_i
    @selected_flat = @flats.select { |e| @flat == e["id"] }[0]
    raise
  end

  private

  def get_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
