# Lyricbook

Lyricbook is a web application to help songwriters to write lyric drafts or store final copies of their lyrics. Songwriters are provided a digital notepad to compose/format their lyrics and a journal-view to review a collection of their songs. 

## User Stories

* As a user, I want to be able to sign up for an account, 
* As a user, I want to be able to login
* As a user, I want to be able to logout
* As a user, I want to create lyrics
* As a user, I want to edit lyrics 
* As a user, I want to delete lyrics 
* As a user, I want to view a collection of all of my lyrics
* As a user, I want to delete my account

* As a user, I want to customize my artist name
* As a user, I want to upload a profile picture 
* As a user, I want to create a profile bio 
* As a user, I want to view other user's profiles 
* As a user, I want to view songs from other user's profiles

## Models and Relationships

![user-lyrics-relations](https://user-images.githubusercontent.com/85265620/137038250-6cd5995f-3a06-4595-bc71-eb48a87d4f00.png)

### User

A `User` has many `Lyrics` 

* id
* username
* password_digest
* bio
* profile_img

### Lyrics

A `Lyric` belongs to a `User`

* id
* title
* artist_name
* content
* copyright_name
* copyright_year
* user_id

## API

This API will feature 5 RESTful routes: show, index, create, update, and destroy.

### Lyrics

### GET /api/lyrics
This will show the collection of lyrics

```json
[
  { 
    id: 1,
    title: "Baby You're a Rich Man",
    artist_name: "The Beatles",
    content: " ... You keep all your money in a big brown bag inside a zoo What a thing to do Baby you're a rich man ... ",
    copyright_name: "Lennon/McCartney",
    copyright_year: 1967,
    user_id: 1
  },
  { 
    id: 2,
    title: "Fixing a Hole",
    artist_name: "The Beatles",
    content: " ... I'm fixing a hole where the rain get in ... ",
    copyright_name: "Lennon/McCartney",
    copyright_year: 1967,
    user_id: 1
  }
  
]
```

### GET /api/lyrics/:id
This will allow a user to select a lyric

```json
{ 
  id: 1,
  title: "Baby You're a Rich Man",
  artist_name: "The Beatles",
  content: " ... You keep all your money in a big brown bag inside a zoo What a thing to do Baby you're a rich man ... ",
  copyright_name: "Lennon/McCartney",
  copyright_year: 1967,
  user_id: 1
}
```

### POST /api/lyrics
This will allow a user to post a new lyric

```json
{ 
  id: 1,
  title: "Baby You're a Rich Man",
  artist_name: "The Beatles",
  content: " ... You keep all your money in a big brown bag inside a zoo What a thing to do Baby you're a rich man ... ",
  copyright_name: "Lennon/McCartney",
  copyright_year: 1967,
  user_id: 1
}
```

### PATCH /api/lyrics/:id
This will allow a user to edit an existing lyric

```json
{ 
  id: 1,
  title: "Baby You're a Rich Man",
  artist_name: "The Beatles",
  content: " ... You keep all your money in a big brown bag inside a zoo What a thing to do Baby you're a rich man ... ",
  copyright_name: "Lennon/McCartney",
  copyright_year: 1967,
  user_id: 1
}
```

### DELETE /api/lyrics/:id
This will allow a user to delete an existing lyric

```json
{ 
  id: 1,
  title: "Baby You're a Rich Man",
  artist_name: "The Beatles",
  content: " ... You keep all your money in a big brown bag inside a zoo What a thing to do Baby you're a rich man ... ",
  copyright_name: "Lennon/McCartney",
  copyright_year: 1967,
  user_id: 1
}
```

### Users

### DELETE /api/users/:id
This will allow a user to delete their account

```json
{
  id: 1,
  username: "thebeatles",
  password_digest: "abcd1234",
  bio: " ... Four lads from Liverpool started in ... ",
  profile_img: "beatles.png"
}
```

### STETCH GOALS

### GET /api/users
This will allow a different user to browse search results of all other users

```json
[
  {
    id: 1,
    username: "thebeatles",
    password_digest: "abcd1234",
    bio: " ... Four lads from Liverpool started in ... ",
    profile_img: "beatles.png"
  },
  {
    id: 2,
    username: "buddyholly",
    password_digest: "efgh5678",
    bio: " ... Texas rock and roll star ... ",
    profile_img: "buddy.png"
  }
]
```

### GET /api/users/:id
This will allow a user to select another user

```json
{
    id: 1,
    username: "thebeatles",
    password_digest: "abcd1234",
    bio: " ... Four lads from Liverpool started in ... ",
    profile_img: "beatles.png"
  }
```

### GET /api/users/:id/lyrics
This will allow a user to view another user's collection of lyrics

```json
{
    id: 1,
    username: "thebeatles",
    password_digest: "abcd1234",
    bio: " ... Four lads from Liverpool started in ... ",
    profile_img: "beatles.png"
    lyrics: [
              { lyric 1, etc, etc },
              { lyric 2, etc, etc },
              { lyric 3, etc, etc }
             ]
  }
```