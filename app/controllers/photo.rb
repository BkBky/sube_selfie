get "/show_all_photos" do
 
  @photos = Photo.all
  @user_login = current_user.name
  erb :all_photos
end

post '/upload/:id' do
  p "en uload"
  albumid = params[:id]

   @photo = Photo.new(params[:photo])
   @photo.save!
    album = Album.find_by_id(albumid)
  #Este es para actualizar/agregar el id en la tabla Photo en el registro que creamos en la línea 12 
   album.photos << @photo
   redirect to "/show_album/#{albumid}"
end


