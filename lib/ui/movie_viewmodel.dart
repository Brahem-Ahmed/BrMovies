import 'package:br_movies/data/models/favorite.dart';
import 'package:br_movies/data/models/movie.dart';
class MovieViewModel {
  late List<String> movieGenres;
  Stream<List<Favorite>>? favoriteStream;
  List<Favorite>? favoriteList;
  List<Movie> trendingMovies = [];
  List<Movie> topRatedMovies = [];
  List<Movie> popularMovies = [];
  List<Movie> nowPlayingMovies = [];
  List<Movie> allMovies = [];

  Future setup() async {
    await Future.wait([setupConfiguration(), setupGenres(), loadMovies()]);
  }

  Future setupConfiguration() async {
  }

  Future setupGenres() async {
    //Return a list of genres
    movieGenres = [
      'Action',
      'Adventure',
      'Crime',
      'Mystery',
      'War',
      'Comedy',
      'Romance',
      'History',
      'Music',
      'Drama',
      'Thriller',
      'Family',
      'Horror',
      'Western',
      'Science Fiction',
      'Animation',
      'Documentation',
      'TV Movie',
      'Fantasy',
    ];
  }

  Future loadMovies() async {
    allMovies = [
      Movie(
        movieId: 1,
        image: 'https://image.tmdb.org/t/p/w500/AEgggzRr1vZCLY86MAp93li43z.jpg',
        title: 'Galactic Odyssey',
        overview: 'A crew of astronauts embarks on a perilous journey across the universe to save humanity.',
        popularity: 8.7,
        releaseDate: DateTime(2023, 5, 12),
      ),
      Movie(
        movieId: 2,
        image: 'https://image.tmdb.org/t/p/w500/2VUmvqsHb6cEtdfscEA6fqqVzLg.jpg',
        title: 'Shadow Conspiracy',
        overview: 'A journalist uncovers a dark political plot that threatens to destabilize the world.',
        popularity: 7.2,
        releaseDate: DateTime(2022, 11, 3),
      ),
      Movie(
        movieId: 3,
        image: 'https://image.tmdb.org/t/p/w500/ombsmhYUqR4qqOLOxAyr5V8hbyv.jpg',
        title: 'Midnight Heist',
        overview: 'Thieves plan an impossible robbery under the cover of a solar eclipse.',
        popularity: 6.9,
        releaseDate: DateTime(2023, 8, 19),
      ),
      Movie(
        movieId: 4,
        image: 'https://image.tmdb.org/t/p/w500/cQN9rZj06rXMVkk76UF1DfBAico.jpg',
        title: 'The Last Samurai',
        overview: 'A disgraced warrior redeems himself in a final battle for honor.',
        popularity: 9.1,
        releaseDate: DateTime(2021, 4, 22),
      ),
      Movie(
        movieId: 5,
        image: 'https://image.tmdb.org/t/p/w500/7bcndiaTgu1Kj5a6qyCmsWYdtI.jpg',
        title: 'Neon Dreams',
        overview: 'A musician struggles with fame and addiction in a dystopian cyberpunk city.',
        popularity: 5.5,
        releaseDate: DateTime(2023, 1, 15),
      ),
      Movie(
        movieId: 6,
        image: 'https://image.tmdb.org/t/p/w500/wqfu3bPLJaEWJVk3QOm0rKhxf1A.jpg',
        title: 'Frozen Wasteland',
        overview: 'Survivors battle extreme cold and mutated creatures in a post-apocalyptic ice age.',
        popularity: 7.8,
        releaseDate: DateTime(2022, 12, 10),
      ),
      Movie(
        movieId: 7,
        image: 'https://image.tmdb.org/t/p/w500/lVgE5oLzf7ABmzyASEVcjYyHI41.jpg',
        title: 'The Forgotten Kingdom',
        overview: 'A young prince reclaims his throne from a tyrannical sorcerer.',
        popularity: 8.3,
        releaseDate: DateTime(2023, 3, 30),
      ),
      Movie(
        movieId: 8,
        image: 'https://image.tmdb.org/t/p/w500/q0fGCmjLu42MPlSO9OYWpI5w86I.jpg',
        title: 'Silent Witness',
        overview: 'A mute woman becomes the key to solving a serial killer case.',
        popularity: 6.4,
        releaseDate: DateTime(2022, 9, 5),
      ),
      Movie(
        movieId: 9,
        image: 'https://image.tmdb.org/t/p/w500/yHYj2t3NzsjkHVYa0bPri4sMBsg.jpg',
        title: 'Cosmic Horror',
        overview: 'Scientists awaken an ancient cosmic entity that threatens reality itself.',
        popularity: 7.5,
        releaseDate: DateTime(2023, 7, 14),
      ),
      Movie(
        movieId: 10,
        image: 'https://image.tmdb.org/t/p/w500/r3d6u2n7iPoWNsSWwlJJWrDblOH.jpg',
        title: 'Rogue Agent',
        overview: 'A CIA operative goes rogue to expose corruption at the highest levels.',
        popularity: 8.0,
        releaseDate: DateTime(2022, 6, 8),
      ),
      Movie(
        movieId: 11,
        image: 'https://image.tmdb.org/t/p/w500/tUae3mefrDVTgm5mRzqWnZK6fOP.jpg',
        title: 'The Time Paradox',
        overview: 'A physicist accidentally alters the past, creating a dystopian future.',
        popularity: 9.2,
        releaseDate: DateTime(2023, 4, 18),
      ),
      Movie(
        movieId: 12,
        image: 'https://image.tmdb.org/t/p/w500/43c1efKzA1kigNzY0HBzeoXp8LR.jpg',
        title: 'Crimson Tide',
        overview: 'A submarine crew faces mutiny during a tense Cold War standoff.',
        popularity: 7.1,
        releaseDate: DateTime(2021, 10, 11),
      ),
      Movie(
        movieId: 13,
        image: 'https://image.tmdb.org/t/p/w500/3lwlJL8aW6Wor9tKvME8VoMnBkn.jpg',
        title: 'The Lost Temple',
        overview: 'Archaeologists discover a cursed temple filled with supernatural traps.',
        popularity: 6.7,
        releaseDate: DateTime(2023, 2, 28),
      ),
      Movie(
        movieId: 14,
        image: 'https://image.tmdb.org/t/p/w500/tObSf1VzzHt9xB0csanFtb3DRjf.jpg',
        title: 'Echoes of War',
        overview: 'Veterans grapple with PTSD and unresolved battles from their past.',
        popularity: 5.9,
        releaseDate: DateTime(2022, 7, 23),
      ),
      Movie(
        movieId: 15,
        image: 'https://image.tmdb.org/t/p/w500/vqBmyAj0Xm9LnS1xe1MSlMAJyHq.jpg',
        title: 'Starlight Express',
        overview: 'A futuristic train race determines the fate of a resource-starved colony.',
        popularity: 8.5,
        releaseDate: DateTime(2023, 6, 9),
      ),
      Movie(
        movieId: 16,
        image: 'https://image.tmdb.org/t/p/w500/ktqPs5QyuF8SpKnipvVHb3fwD8d.jpg',
        title: 'The Puppet Master',
        overview: 'A detective hunts a criminal who manipulates people like puppets.',
        popularity: 7.6,
        releaseDate: DateTime(2022, 4, 17),
      ),
      Movie(
        movieId: 17,
        image: 'https://image.tmdb.org/t/p/w500/qIipTUGmAVjMH7ERtdzKkPuVYhP.jpg',
        title: 'The Matrix',
        overview: 'A hacker discovers the simulated nature of his reality and joins a rebellion.',
        popularity: 9.9,
        releaseDate: DateTime(1999, 3, 31),
      ),
      Movie(
        movieId: 18,
        image: 'https://image.tmdb.org/t/p/w500/4CkZl1LK6a5rXBqJB2ZP77h3N5i.jpg',
        title: 'The Neighbors',
        overview: 'A family realizes their suburban neighbors are hiding a terrifying secret.',
        popularity: 3.9,
        releaseDate: DateTime(2021, 8, 13),
      ),
      Movie(
        movieId: 19,
        image: 'https://image.tmdb.org/t/p/w500/jwMwRucnAROgWo9WLLmIqzHmmzi.jpg',
        title: 'Quantum Break',
        overview: 'A lab accident gives a scientist the ability to manipulate time.',
        popularity: 8.8,
        releaseDate: DateTime(2023, 9, 1),
      ),
      Movie(
        movieId: 20,
        image: 'https://image.tmdb.org/t/p/w500/vTX9CxFNEQOlfXsgqec7xmc5UtD.jpg',
        title: 'Dark Waters',
        overview: 'A fisherman encounters a monstrous creature in the depths of the ocean.',
        popularity: 6.2,
        releaseDate: DateTime(2022, 5, 27),
      ),
    ];
  }
  Stream<List<Favorite>> favoritesStream() {
    favoriteList ??= [Favorite(
          movieId: 1,
          image:
          'http://image.tmdb.org/t/p/w780/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg',
          favorite: false,
          title: 'Title',
          overview: 'Overview',
          popularity: 1.0,
          releaseDate: DateTime.now()),
        Favorite(
            movieId: 2,
            image:
            'http://image.tmdb.org/t/p/w780/gKkl37BQuKTanygYQG1pyYgLVgf.jpg',
            favorite: false,
            title: 'Title',
            overview: 'Overview',
            popularity: 1.0,
            releaseDate: DateTime.now()),
        Favorite(
            movieId: 3,
            image:
            'http://image.tmdb.org/t/p/w780/4xJd3uwtL1vCuZgEfEc8JXI9Uyx.jpg',
            favorite: false,
            title: 'Title',
            overview: 'Overview',
            popularity: 1.0,
            releaseDate: DateTime.now()),
        Favorite(
            movieId: 4,
            image:
            'http://image.tmdb.org/t/p/w780/uuA01PTtPombRPvL9dvsBqOBJWm.jpg',
            favorite: false,
            title: 'Title',
            overview: 'Overview',
            popularity: 1.0,
            releaseDate: DateTime.now()),
        Favorite(
            movieId: 5,
            image:
            'http://image.tmdb.org/t/p/w780/H6vke7zGiuLsz4v4RPeReb9rsv.jpg',
            favorite: false,
            title: 'Title',
            overview: 'Overview',
            popularity: 1.0,
            releaseDate: DateTime.now()),];
    favoriteStream = Stream.value(favoriteList!);
    return favoriteStream!;
  }
  void updateFavorite(Favorite favorite){
    final index = favoriteList!.indexWhere((element) => element.movieId == favorite.movieId);
    if (index != -1 ) {
      favoriteList![index] = favorite;
    }
  }







  Future<List<Movie>> getTrendingMovies(int page) async {
    if (trendingMovies.isEmpty) {
      trendingMovies = [
        allMovies[0],
        allMovies[2],
        allMovies[4],
        allMovies[6],
        allMovies[8],
        allMovies[10],
        allMovies[12],
      ];
    }
    return trendingMovies;
  }

  Future<List<Movie>> getPopular(int page) async {
    if (popularMovies.isEmpty) {
      popularMovies = [
        allMovies[1],
        allMovies[3],
        allMovies[5],
        allMovies[7],
        allMovies[9],
        allMovies[11],
        allMovies[13],
      ];
    }
    return popularMovies;
  }

  Future<List<Movie>> getTopRated(int page) async {
    if (topRatedMovies.isEmpty) {
      topRatedMovies = [
        allMovies[14],
        allMovies[16],
        allMovies[18],
        allMovies[1],
        allMovies[3],
        allMovies[5],
        allMovies[7],
      ];
    }
    return topRatedMovies;
  }

  Future<List<Movie>> getNowPlaying(int page) async {
    if (nowPlayingMovies.isEmpty) {
      nowPlayingMovies = [
        allMovies[8],
        allMovies[10],
        allMovies[12],
        allMovies[14],
        allMovies[16],
        allMovies[18],
        allMovies[1],
      ];
    }
    return nowPlayingMovies;
  }


  Movie findMovieById(int movieId) {
    return allMovies.firstWhere((movie) => movie.movieId == movieId);
  }
}