get '/show_album/:album_id' do
   @user_login = current_user.name
  p @album = params[:album_id]
   @photos = Photo.where(album_id: @album)
  # @photos = Photo.all
  p "hola en show photo"
  # @photos.each do |photo|
  #   p photo.id
    
  # end
  erb :photos
end


#Create a albums on database
post '/create_album' do 
  p album = params[:album]
  album_create  = Album.new(album: album, user_id: current_user.id)
  # Si el usuario se guardó en la DB, redirige a su perfil, de otra forma
  # vuelve a mostrar el formulario.
  if album_create .save
    #I declare message for user, I can see it on view/layout
    session[:successfull] = 'Successfully created album'
    redirect to '/albums'
  else
    session[:error] = 'Error, try again'
    redirect to '/albums'
  end
end