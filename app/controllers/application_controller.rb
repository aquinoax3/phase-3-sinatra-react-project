class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/albums" do
    albums = Album.all
    albums.to_json
  end

  get "/albums/:id" do
    albums = Album.find(params[:id])
    albums.to_json
  end

  post "/albums" do
    albums = Album.create(album_title: params[:album_title], album_cover: params[:album_cover], album_artist: params[:album_artist])
    albums.to_json
  end

  delete "/albums/:id" do
    albums = Album.find(params[:id])
    albums.destroy
    albums.to_json
  end

  get "/users/:username/albums" do
    user_albums = User.find_by(user_name: params[:username]).albums
    user_albums.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users/:id" do
    users = User.find(params[:id])
    users.to_json
  end

  post "/users" do
    users = User.create(user_name: params[:user_name], password: params[:password])
    users.to_json
  end

  delete "/users/:id" do
    users = User.find(params[:id])
    users.destroy
    users.to_json
  end

  get "/toplists" do
    top_lists = Toplist.all
    top_lists.to_json
  end

  get "/toplists/:id" do
    top_lists = User.find_by(params[:id]).albums
    top_lists.to_json
  end

  post "/toplists" do
    top_lists = Toplist.create(user_id: params[:user_id], album_id: params[:album_id])
    top_lists.to_json
  end

  delete "/toplists/:id" do
    top_lists = Toplist.find(params[:id]).albums
    top_lists.destroy
    top_lists.to_json
  end

  post "/login" do
    user = params[:user_name]
    pass = params[:password]
    foundUser = User.find_by(user_name: user)
    if(foundUser)
      if(foundUser.password == pass)
        foundUser.to_json
      end
    end
  end

end
