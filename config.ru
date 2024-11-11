# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

map '/' do
  run Rails.application
end

Rails.application.load_server

Rails.application.routes.draw do
  root "dice#home" # This sets the homepage with 'Dice Roll' heading and links
  get "/dice/:dice_count/:sides", to: "dice#roll"
end

