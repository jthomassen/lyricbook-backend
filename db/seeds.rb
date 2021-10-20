puts "Cleaning up data..."
User.destroy_all
Lyric.destroy_all

puts "Seeding data..."

#users
jeff = User.create!(username: "jthomassen", password: "123", bio: "Songwriter from Denver, CO, Jeff...", profile_img: "https://media1.fdncms.com/den/imager/u/magnum/12489097/img_0283.jpg?cb=1633448540")
john = User.create!(username: "johnsmith", password: "123", bio: "Songwriter from Minneapolis, MN ...", profile_img: "https://live.staticflickr.com/7190/6781452900_abdf064e28_b.jpg")
suzy = User.create!(username: "suzywaters", password: "123", bio: "Songwriter from Philadelphia, PE ...", profile_img: "https://i.pinimg.com/originals/b7/74/fd/b774fd854e367926512a11fff0a5905c.jpg")

#lyrics

#jeffs lyrics
Lyric.create!(title: "In Touch", artist_name: "Tomas Sen", content: "Dreading all the days of summer, where I was more in touch Dreading all the days of summer, where I was more in touch Dreading all the days of summer, where I was more in touch Dreading all the days of summer, where I was more in touch", copyright_name: "Jeff Thomassen", copyright_year: 2017, user_id: jeff.id)
Lyric.create!(title: "Fashion", artist_name: "Tomas Sen", content: "Blooming colors Soapy decor Lovely curtain Fashion, fashion Fashion, fashion", copyright_name: "Jeff Thomassen", copyright_year: 2016, user_id: jeff.id)

#johns lyrics
Lyric.create!(title: "My First Song", artist_name: "John's Band", content: "Walking around on a big summer day Trying to get the best of life and do it everyday", copyright_name: "John Smith", copyright_year: 2009, user_id: john.id)
Lyric.create!(title: "My Second Song", artist_name: "John's Band", content: "All around the world There are people that I see All around the country There are things that just aren't me", copyright_name: "John Smith", copyright_year: 2011, user_id: john.id)

#suzys lyrics
Lyric.create!(title: "Song 1", artist_name: "Suzi Aqua", content: "All around the world There are people that I see All around the country There are things that just aren't me", copyright_name: "Suzy Waters", copyright_year: 2018, user_id: suzy.id)
Lyric.create!(title: "Song 2", artist_name: "Suzi Aqua", content: "Walking around on a big summer day Trying to get the best of life and do it everyday", copyright_name: "Suzy Waters", copyright_year: 2009, user_id: suzy.id)

puts "Seeding complete!"