require 'sinatra'
require 'sinatra/contrib'

# Allowed the server to be reloaded without having to close it down and restart it again
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require_relative './models/post.rb'
require_relative './controllers/posts_controller.rb'

# rbenv rehash => run this on bash if rackup isn't found
# Take gem that budle installed and store it where it can be seen

# Override methods
use Rack::Reloader
use Rack::MethodOverride

# run => method of rack
# Direct request to the correct controller
# Control the blog posts - CRUD of the server
run PostsController
