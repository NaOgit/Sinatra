require 'sinatra'
require 'sinatra/contrib'

# Allowed the server to be reloaded without having to close it down and restart it again
require 'sinatra/reloader' if development?

# Explain what each of these do

# create first route
get "/" do
  "Welcome"
end

get "/pokemon" do
  "List of pokemons"
end

get "/pokemon/new" do
  "Get new pokemon"
end

post "/pokemon" do
  "New pokemon added"
end

get "/pokemon/:id" do
  id = params[:id]
  "Show a specific pokemon #{id}"
end

get "/pokemon/:id/edit" do
  "Edit a pokemon"
end

put "/pokemon/:id" do
  "Updated a pokemon"
end

delete "/pokemon/:id" do
  "Deleted a pokemon"
end
