require 'rubygems'
require 'bundler'
Bundler.setup

require 'sinatra'
require 'awesome_print'

require './litsum'

run Litsum
