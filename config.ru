require 'bundler'
require 'rack/jekyll'
Bundler.require(:default, :production)

run Rack::Jekyll.new
