class PostsController < Sinatra::Base
# Inherit everything from Sinatra to this class
# Able to use all the available code from there and here
# middleware sits between the server and the request
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






end
