require 'rubygems'
require 'sinatra/base'
require 'sinatra/reloader'
require 'active_record'
require './app/app.rb'
require './db/migrate/20171225185321_create_comments.rb'

run HelloApp
