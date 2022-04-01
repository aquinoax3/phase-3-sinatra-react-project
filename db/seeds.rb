puts "Deleting old data..."

Album.destroy_all
Toplist.destroy_all
User.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here

puts "Creating new album..."

Album.create(album_artist:"asdf", album_title: "rjytrj", album_cover: "sdfgs", )
Album.create(album_artist:"hhrhr", album_title: "yutnu", album_cover: "rytj", )
Album.create(album_artist:"xzcvz", album_title: "qwerq", album_cover: "asc", )
Album.create(album_artist:"xzcvz", album_title: "qwerq", album_cover: "asc", )
Album.create(album_artist:"xzcvz", album_title: "qwerq", album_cover: "asc", )



puts "Creating new user..."

User.create(user_name: "Phil", password: "Music123")
User.create(user_name: "Sally", password: "Korn45" )
User.create(user_name: "Dan", password: "Thumbnail9")

# puts "Creating new toplist..."

# Toplist.create(user_id: User.first.id, album_id: Album.first.id)
# Toplist.create(user_id: User.first.id, album_id: Album.second.id)
# Toplist.create(user_id: User.first.id, album_id: Album.third.id)
# Toplist.create(user_id: User.first.id, album_id: Album.fourth.id)
# Toplist.create(user_id: User.first.id, album_id: Album.fifth.id)

# Toplist.create(user_id: User.second.id, album_id: Album.id)
# Toplist.create(user_id: User.second.id, album_id: Album.id)
# Toplist.create(user_id: User.second.id, album_id: Album.id)
# Toplist.create(user_id: User.second.id, album_id: Album.id)
# Toplist.create(user_id: User.second.id, album_id: Album.id)

# Toplist.create(user_id: User.third.id, album_id: Album.id)
# Toplist.create(user_id: User.third.id, album_id: Album.id)
# Toplist.create(user_id: User.third.id, album_id: Album.id)
# Toplist.create(user_id: User.third.id, album_id: Album.id)
# Toplist.create(user_id: User.third.id, album_id: Album.id)

puts "✅ Done seeding!"
