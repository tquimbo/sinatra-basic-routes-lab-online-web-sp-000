ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_all 'models'

class App < Sinatra::Base

    get '/name' do
    "My name is Tim."
    end

    get '/hometown' do
        "My hometown is Woodcliff Lake."
    end

    get '/favorite-song' do
        "My favorite song is Waves."
    end

end