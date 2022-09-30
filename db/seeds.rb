# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.create!([
                {
                  title: 'The Bridge Over River Kwai',
                  release: '7/10/1956',
                  mpaa_rating: 'PG',
                  running_time: '2h 41m',
                  imdb_rating: 8.2,
                  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                 ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                 nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit
                 esse'
                },
                {
                  title: 'The Shawshank Redemption',
                  release: '5/3/1994',
                  mpaa_rating: 'R',
                  running_time: '2h 22m',
                  imdb_rating: 9.3,
                  description: 'Two imprisoned men bond over a number of years, finding solace and eventual redemption
                 through acts of common decency.'
                },
                {
                  title: 'The Dark Knight',
                  release: '16/7/2008',
                  mpaa_rating: 'PG-13',
                  running_time: '2h 32m',
                  imdb_rating: 9.0,
                  description: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham,
                 Batman must accept one of the greatest psychological and physical tests of his ability to fight
                 injustice.'
                },
                {
                  title: 'Top Gun Maverick',
                  release: '24/3/2022',
                  mpaa_rating: 'PG-13',
                  running_time: '2h 10m',
                  imdb_rating: 8.4,
                  description: "After thirty years, Maverick is still pushing the envelope as a top naval aviator, but
                 must confront ghosts of his past when he leads TOP GUN's elite graduates on a mission that demands
                 the ultimate sacrifice from those chosen to fly it."
                }
              ])

Person.create!([{ name: 'David Lean',
                  bio: "An important British filmmaker, David Lean was born in Croydon on March 25, 1908 and brought up in a
strict Quaker family (ironically, as a child he wasn't allowed to go to the movies). During the 1920s, he briefly
considered the possibility of becoming an accountant like his father before finding a job at Gaumont British Studios in
1927. He worked as tea boy, clapper boy, messenger, then cutting room assistant. By 1935, he had become chief editor
of Gaumont British News until in 1939 when he began to edit feature films, notably for Anthony Asquith, Paul Czinner
and Michael Powell. Amongst films he worked on were Pygmalion (1938), Major Barbara (1941) and One of Our Aircraft Is
Missing (1942).",
                  dob: '1908/25/3' }])

Role.create!([{
               job: 'Director',
               specification: 'Director',
               movie_id: 1,
               person_id: 1
             },
              {
                job: 'Writer',
                specification: 'screenplay',
                movie_id: 4,
                person_id: 1
              }])

User.create!([{
               name: 'John Doe',
               email: 'john.doe@gmail.com',
               password: 'mycatsname123',
               password_confirmation: 'mycatsname123'
             },
              {
                name: 'Jane Smith',
                email: 'jane.smith@gmail.com',
                password: 'mydogsname123',
                password_confirmation: 'mydogsname123'
              }])

Comment.create!([{
                  body: 'An okay film, see it with a friend.',
                  movie_id: 1,
                  user_id: 1
                },
                 {
                   body: 'Great movie, would recommend!',
                   movie_id: 2,
                   user_id: 2
                 },
                 {
                   body: 'Not so good, especially the ending.',
                   movie_id: 2,
                   user_id: 2
                 }])
