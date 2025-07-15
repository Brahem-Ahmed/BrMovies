import 'package:br_movies/ui/home/genres/genre_search_row.dart';
import 'package:br_movies/ui/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenreScreen extends ConsumerStatefulWidget{
  const GenreScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GenreScreenState();
}

class _GenreScreenState extends ConsumerState<GenreScreen>{
  @override
  Widget build(BuildContext context, ) {
   return SafeArea(child: Container(child: Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.start,
   children: [Row(mainAxisSize: MainAxisSize.max,
     children: [
       Padding(
         padding: const EdgeInsets.fromLTRB(16,16.0,0,24),
         child: Text('Find a Movie',style: largeTitle),
       ),
     ],
   ),
   GenreSearchRow((searchString){}),
     GenreScreen()
 ], )
   )
   );
  }
}

