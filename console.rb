require('pry-byebug')
require_relative('models/movie.rb')
require_relative('models/star.rb')
require_relative('models/casting.rb')

Star.delete_all()
Movie.delete_all()
Casting.delete_all()


star_1 = Star.new({'first_name' => 'Kira', 'last_name' => 'Qureshi'})
star_2 = Star.new({'first_name' => 'Jojo','last_name' => 'Mn'})
star_3 = Star.new({'first_name' => 'Mina','last_name' => 'Kr'})
star_4 = Star.new({'first_name' => 'Paul','last_name' => 'Marz'})

star_1.save()
star_2.save()
star_3.save()
star_4.save()

star_1.list()
star_2.list()
star_3.list()

star_1.first_name = "Kiran"
star_1.update()

star_4.delete() #.... when i tried to delete star_1 it caused an issue

all_stars = Star.list_all() #......

movie_1 = Movie.new({'title' => 'life', 'genre' => 'classic'})
movie_2 = Movie.new({'title' => 'love','genre' => 'romance'})
movie_3 = Movie.new({'title' => 'happiness','genre' => 'drama'})
movie_4 = Movie.new({'title' => 'hip','genre' => 'hap'})

movie_1.save()
movie_2.save()
movie_3.save()

movie_1.list()
movie_2.list()
movie_3.list()

movie_4.title = 'hurray'
movie_4.update()

movie_4.delete()

all_movies = Movie.list_all()  #.....


casting_1 = Casting.new({'movie_id' => movie_3.id,'star_id' => star_1.id, 'fee' => 10})
casting_2 = Casting.new({'movie_id' => movie_2.id, 'star_id' => star_2.id,'fee' => 20})
casting_3 = Casting.new({'movie_id' => movie_1.id, 'star_id' => star_3.id,'fee' => 30})


casting_1.save()
casting_2.save()
casting_3.save()


casting_1.list()
casting_2.list()
casting_3.list()

casting_1.movie_id = movie_1.id
casting_1.update()

# casting.delete()

all_castings = Casting.list_all() #.......








binding.pry
nil
