require 'sinatra'
require 'sinatra/contrib'

# Allowed the server to be reloaded without having to close it down and restart it again
require 'sinatra/reloader' if development?

# Explain what each of these do

# create first route
get "/" do
  "Homepage"
end

get "/food" do
  "List of food"
end

get "/food/new" do
  "Get new food"
end

post "/food" do
  "New food added"
end

get "/food/:id" do
  id = params[:id]
  "Show a specific food #{id}"
end

get "/food/:id/edit" do
  id = params[:id]
  "Edit food #{id}"
end

put "/food/:id" do
  id = params[:id]
  "Updated food #{id}"
end

delete "/food/:id" do
  id = params[:id]
  "Deleted food #{id}"
end
