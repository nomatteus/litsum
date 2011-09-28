require 'rubygems'
require 'bundler'
Bundler.setup

require 'sinatra'
require 'awesome_print'
require 'haml'
require 'sass'

require 'iconv'

require './litsum'

run Litsum
