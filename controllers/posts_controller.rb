class PostsController < Sinatra::Base
# Inherit everything from Sinatra to this class
# Able to use all the available code from there and here
# middleware sits between the server and the request

  # Set => a method
  # Set root as parent directory of the current File.read("path/to/file")
  # root => based folder - grab the file that you're in
  # '..' => join file and where we are to make this one above of where we are (back up the directory by one)
  # override the default root for this project
  # Must always check if the root and views are set correctly
  set :root, File.join(File.dirname(__FILE__), '..')

  # Set the view directory correctly
  # Look for views, look at the root of the project
  # Proc.new => set new default for the current location of 'views' => views object will now hav diff config (Overide default config)
  set :views, Proc.new {File.join(root, 'views')}

  # Set up the reloader
  configure :development do
    register Sinatra::Reloader
  end

  $posts = [{
      id:0,
      title: 'Post 0',
      post_body: 'This is the initial post'
    },
    {
      id:1,
      title: 'Post 1',
      post_body: 'This is the first post'
    },
    {
      id:2,
      title: 'Post 2',
      post_body: 'This is the second post'
    },
    {
      id:2,
      title: 'Post 3',
      post_body: 'This is the third post'
    }
  ]

  # Separation concerns
  get "/" do
    @title = "Blog Posts"
    @post = $posts
    # erb => go look for the layout field first
    # Apply the template
    erb :'posts/index'
    # "test"
  end

  get "/new" do
    @title = "New post"

    @post = {
      id: "",
      title: "",
      post_body: ""
    }
    erb :'posts/new'
  end

  post "/" do
    puts params
    # Assign new posts
    new_post = {
      id: $posts.length,
      title: params[:title],
      post_body: params[:post_body]
    }

    $posts.push(new_post)

    redirect "/"
    "New added"
  end

  get "/:id" do
    id = params[:id].to_i
    @post = $posts[id]
    # erb => go look for the layout field first
    # Apply the template
    erb :'posts/show'
  end

  get "/:id/edit" do
    id = params[:id].to_i
    @post = $posts[id]
    @title = "Edit Post"
    erb :'posts/edit'
  end

  put "/:id" do
    id = params[:id].to_i

    post = $posts[id]

    post[:title] = params[:title]
    post[:post_body] = params[:post_body]

    redirect '/'
  end

  delete "/:id" do
    id = params[:id].to_i
    $posts.delete_at(id)

    redirect "/"

  end






end
