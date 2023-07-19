user1 = User.create(email: "user1@example.com", password: "password1")
user2 = User.create(email: "user2@example.com", password: "password2")

user_info1 = UserInfo.create(first_name: "John", last_name: "Doe", telephone_number: "1234567890", user: user1)
user_info2 = UserInfo.create(first_name: "Jane", last_name: "Smith", telephone_number: "9876543210", user: user2)

song1 = Song.create(name: "Song 1", artist: "Artist 1", duration: 3.45)
song2 = Song.create(name: "Song 2", artist: "Artist 2", duration: 4.15)

playlist1 = PlaylistOld.create(user: user1, song: song1, title: "User 1's Playlist")
playlist2 = PlaylistOld.create(user: user2, song: song2, title: "User 2's Playlist")
