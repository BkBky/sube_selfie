
post '/register_form' do
  # Capturamos los valores del formulario con 'params'
  name = params[:name]
  email = params[:email]
  password = params[:password]
  # p password = params[:password]

  # Creamos una instancia de la clase User con sus atributos necesarios
  user  = User.new(name: name, email: email, password: password)
  # Si el usuario se guardó en la DB, redirige a su perfil, de otra forma
  # vuelve a mostrar el formulario.
  if user.save
    #I declare message for used, I can see it on view/layout
    session[:successfull] = 'Successfull register'
    # if the register was successfull, then i authenticate user login 
    valid_user = User.authenticate(email, password)
    if valid_user
      p session[:user_id] = valid_user.id
      redirect to "/photos"
    end
  else
    session[:error] = 'User and/or password does exit. Try again.'
    redirect to '/'
  end
  
end
