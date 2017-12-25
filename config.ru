require 'rubygems'
require 'sinatra/base'
require "sinatra/reloader"
require 'active_record'
require './app/app.rb'
require './app/model/schema.rb'

run HelloApp
