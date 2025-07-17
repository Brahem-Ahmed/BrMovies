import 'package:br_movies/providers.dart';
import 'package:br_movies/ui/home/genres/genre_search_row.dart';
import 'package:br_movies/ui/home/genres/genre_section.dart';
import 'package:br_movies/ui/home/genres/sort_picker.dart';
import 'package:br_movies/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../widgets/vert_movie_list.dart';

class GenreScreen extends ConsumerStatefulWidget{
  const GenreScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GenreScreenState();
}

class _GenreScreenState extends ConsumerState<GenreScreen>{
  final expandedNotifier = ValueNotifier<bool>(false);
  List<GenreState> genres = [];

  @override
  void initState() {
    super.initState();
    genres = [
      GenreState(genre: 'Action', isSelected: false),
      GenreState(genre: 'Adventure', isSelected: false),
      GenreState(genre: 'Crime', isSelected: false),
      GenreState(genre: 'Mystery', isSelected: false),
      GenreState(genre: 'War', isSelected: false),
      GenreState(genre: 'Comedy', isSelected: false),
      GenreState(genre: 'Romance', isSelected: false),
      GenreState(genre: 'History', isSelected: false),
      GenreState(genre: 'Music', isSelected: false),
      GenreState(genre: 'Drama', isSelected: false),
      GenreState(genre: 'Thriller', isSelected: false),
      GenreState(genre: 'Family', isSelected: false),
      GenreState(genre: 'Horror', isSelected: false),
      GenreState(genre: 'Western', isSelected: false),
      GenreState(genre: 'Science Fiction', isSelected: false),
      GenreState(genre: 'Animation', isSelected: false),
      GenreState(genre: 'Documentation', isSelected: false),
      GenreState(genre: 'TV Movie', isSelected: false),
    ];
   
  }
  @override
  Widget build(BuildContext context, ) {
   return SafeArea(child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.start,            crossAxisAlignment: CrossAxisAlignment.start,

     children: [Row(mainAxisSize: MainAxisSize.max,
     children: [
       Padding(
         padding: const EdgeInsets.fromLTRB(16,16.0,0,24),
         child: Text('Find a Movie',style: largeTitle),
       ),
     ],
   ),
   GenreSearchRow((searchString){}),
     ValueListenableBuilder<bool>(
         valueListenable: expandedNotifier,
         builder: (BuildContext context, bool value, Widget? child) {
           return GenreSection(
             genreStates: genres,
             isExpanded: value,
             onGenresExpanded: (expanded) {
               expandedNotifier.value = expanded;
             },
             onGenresSelected: (List<GenreState> states) { },
           );
         }),
       const Divider(),
       SortPicker(onSortSelected : (sorting){}),
       VerticalMovieList(movies: [], onMovieTap: (movieId) {})


      

    ], )
   );
  }
}

