class Post
  attr_accessor(:id, :title, :post_body)
  # A method to connect to database
  def self.open_connection
    # Tell it to go to the correct database
    conn = PG.connect(dbname: "blog")
  end
  # Save information
  # Only the model can deal with the storage; get things saved correctly
  def save

  end

  # Get all posts and return them back
  def self.all

  end

  # GET POST BY ID
  def self.find(id)

  end

  # Delete post by id
  def self.destroy(id)

  end

  # Change the object to fit in with the current database, format wise
  # Sort data out; making sure all data are stored correctly
  def self.hydrate(post_data)

  end
end


Post.open_connection
