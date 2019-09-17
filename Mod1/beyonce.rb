beyonce = {
    hits: [
      { title: 'bootylicious', group: true, groupName: 'destinysChild', hair: ['straight', 'blonde', 'pink tips'], signatureLook: 'fedora with yellow feather', videoTheme: 'dressing room dance', bestLine: 'Move your body up and down, make your booty touch the ground', fierceness: 7, formation: false, dancers: 20
      },
      { title: 'singleLadies', group: false, groupName: 'none', hair: ['honey brown', 'half up, half down'], signatureLook: 'black bodysuit and legs for days', videoTheme: 'single ladies dance', bestLine: 'if you like it then you should\'ve put a ring on it', fierceness: 10, formation: true, dancers: 2 
      },
      { title: 'letMeUpgradeYou', group: false, groupName: 'none', hair: ['beaded bun', 'wet hair', 'honey brown', 'waves'], signatureLook: 'flapper dress and bodysuit', videoTheme: 'decadence, water, gold beads and pearls', bestLine: 'I could do for you what Martin did for the people', fierceness: 10, formation: true, dancers: 5 
      },
      { title: 'sorry', group: false, groupName: 'none', hair: ['braids', 'bun', 'blonde', 'waves', 'bob'], signatureLook: 'braided crown with gold bikini top', videoTheme: 'party bus and Serena Williams in bodysuit', bestLine: 'Boi bye', fierceness: 10, formation: false, dancers: 1 
      },
      { title: 'sayMyName', group: true, groupName: 'destinysChild', hair: ['blonde', 'curly', 'braid', 'pony tail'], signatureLook: 'none', videoTheme: 'color blocked scenes with group', bestLine: 'say my name, say my name', fierceness: 7, formation: true, dancers: 6 
      },
      { title: 'feelingMyself', group: true, groupName: 'Nicki Minaj featuring Beyonce', hair: ['blonde', 'waves'], signatureLook: 'sporty bodysuit', videoTheme: 'Coachella music festival', bestLine: 'Im felling myself', fierceness: 9, formation: false, dancers: 0 
      }
    ],
    movies: [
      { title: 'Austin Power\'s Goldmember', year: 2002, rating: 5},
      { title: 'Dreamgirls', year: 2006, rating: 7},
      { title: 'Obsessed', year: 2009, rating: 6},
      { title: 'Cadillac Records', year: 2008, rating: 8},
      { title: 'Life is But a Dream', year: 2013, rating: 6},
      { title: 'The Pink Panther', year: 2006, rating: 4},
      { title: 'Epic', year: 2013, rating: 7},
      { title: 'The Fighting Temptations', year: 2003, rating: 5}
    ]
  };
  
#    puts all the songs
def songs(beyonce)
  puts beyonce[:hits]
end

#    puts all the movies
def movies(beyonce)
  puts beyonce[:movies]
end

#    create an array with a list of all of Beyonce's hit songs (2ways)
def song_list(beyonce)
  beyonce[:hits].map do |hit|
    hit[:title]
  end
end
  
#    create an array with a list of all of Beyonce's fierceness ratings
def fierceness(beyonce)
  beyonce[:hits].map do |hit|
    hit[:fierceness]
  end
end
  
#    give me all the songs where Beyonce is wearing a bodysuit or a bodysuit is part of the video theme
def bodysuit_list(beyonce)
  bodysuits = []
  beyonce[:hits].each do |hit|
   if hit[:signatureLook].include?("bodysuit")
     bodysuits.push(hit[:title])
   end
  end
  puts bodysuits
end

#    create an array with all of the songs where Beyonce's fierceness is greater than or equal to 8
def fiercer(beyonce)
  beyonce[:hits].select do |hit|
    hit[:fierceness] >= 8
    end.map do |hit|
    hit[:title]
  end
end
  
#    create an array with all of the movies Beyonce made in 2006 and after
def late_movies(beyonce)
  beyonce[:movies].select do |movies|
    movies[:year] >= 2006
    end.map do |movie|
    movie[:title]
  end
end
  
#    find all of the group hit songs
def group_hits(beyonce)
  beyonce[:hits].select do |hit|
    hit[:groupName] != "none"
    end.map do |hit|
    hit[:title]
  end
end
  
#    find a hit song where Beyonce's hair is blonde
def blonde_hair(beyonce)
  beyonce[:hits].select do |hit|
    hit[:hair].include? "blonde"
    end.map do |hit|
    hit[:title]
  end
end
  
#    find the hit song sorry
def find_sorry(beyonce)
  beyonce[:hits].select do |hit|
    hit[:title] == "sorry"
    end.map do |hit|
    hit
  end
end
  
#    find all hit songs where Beyonce's fierceness rating is 10
def fiercest(beyonce)
  beyonce[:hits].select do |hit|
    hit[:fierceness] == 10
    end.map do |hit|
    hit[:title]
  end
end
  
#    sum up Beyonces fierceness value for all of her hit songs
def total_fierceness(beyonce)
  fierce_total = 0
  beyonce[:hits].each do |hit|
    fierce_total += hit[:fierceness]
  end
  p fierce_total
end
  
#    get the average fierceness value for all of her hit songs
def average_fierceness(beyonce)
  fierce_total = 0
  number_of_songs = 0
  beyonce[:hits].each do |hit|
    fierce_total += hit[:fierceness]
    number_of_songs += 1
  end
  fierce_total/number_of_songs
end
  
#    sum up Beyonces rating value for all of her movies
def total_rating(beyonce)
  rating_total = 0
  beyonce[:movies].each do |movie|
    rating_total += movie[:rating]
  end
  p rating_total
end
  
#    get the average rating value for all of her movies
def average_ratings(beyonce)
  rating_total = 0
  number_of_movies = 0
  beyonce[:movies].each do |movie|
    rating_total += movie[:rating]
    number_of_movies += 1
  end
  average = rating_total/number_of_movies
  average
end
  
#    create an object where the properties are song names and the value is an object which contains that fierceness and average fierceness
def song_average(beyonce)
  hit_average_hash = {}
  beyonce[:hits].each do |hit|
    hit_average_hash[hit[:title]] = ["Song fierceness: #{hit[:fierceness]}", "Total average fierceness: #{average_fierceness(beyonce)}"]
  end
  hit_average_hash
end
  
#    create an object where the properties are movie names and the value is an object which contains that rating and average rating
def movie_average(beyonce)
  movie_average_hash = {}
  beyonce[:movies].each do |movie|
    movie_average_hash[movie[:title]] = ["Movie rating: #{movie[:fierceness]}", "Total average rating: #{average_ratings(beyonce)}"]
  end
  movie_average_hash
end
  
#    sum up the total number of dancers in all of the hit song videos
def total_dancers(beyonce)
  dance_total = 0
  beyonce[:hits].each do |hit|
    dance_total += hit[:dancers]
  end
  p dance_total
end

  
#    create an array of beyonces hairstyles without repeats
def hairstyles(beyonce)
  hairs = []
  beyonce[:hits].each do |hit|
    hairs << hit[:hair]
  end
  hairs.flatten.uniq
end
  
#    create an object list with beyonces hairstyles with a tally of each hairstyle ie { 'blonde': 3, ect.}
def hair_count(beyonce)
  consHair = {}
  beyonce[:hits].map do |hit|
    hit[:hair].map do |hit|
      if consHair[hit]
        consHair[hit] += 1
      else
        consHair[hit] = 1
      end
    end
  end
  consHair
end



movie_average(beyonce)