require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show]

  # by default, rails shows the view with the same name as the action
  def index
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    json = URI.open(url).read
    @flats = JSON.parse(json)
    # tomorrow:
    # @flats = Flat.all
  end

  def show
    # tomorrow:
    # @flat = Flat.find(id???)
    @flat = @flats.find do |flat|
      flat['id'] == params[:id].to_i
    end
  end

  private

  def set_flats
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    json = URI.open(url).read
    @flats = JSON.parse(json)
  end
end
