#seed table user
user1 = User.create(name: 'Bombo', email: 'b@gmail.com', password: '1')
user2 = User.create(name: 'Cirilo', email: 'c@gmail.com', password: '1')
user3 = User.create(name: 'Misha', email: 'm@gmail.com', password: '1')
#seed table sruvey

album1 = Album.create(user_id: user1, album: "BomboAlbum")
album2 = Album.create(user_id: user2, album: "MishaAlbum")
album3 = Album.create(user_id: user3, album: "CiriloAlbum")

# photo1= Photo.create(photo: "dog.jpg", album_id: album1)
# photo2= Photo.create(photo: "cacomixtle.jpeg", album_id: album1)
# photo3= Photo.create(photo: "pantalla1.jpg", album_id: album2)
# photo4= Photo.create(photo: "vaquitajpeg", album_id: album3)