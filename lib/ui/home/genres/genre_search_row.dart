import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../theme/theme.dart';
typedef OnSearch = void Function(String searchString);
class GenreSearchRow extends ConsumerStatefulWidget{
  final OnSearch onSearch; 
  const GenreSearchRow(this.onSearch, {super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GenreSearchRowState();
}

class _GenreSearchRowState extends ConsumerState<GenreSearchRow>{
  // TODO: Add variables
  late TextEditingController movieTextController;
  final FocusNode textFocusNode = FocusNode();
  // TODO Add init and dispose
  @override
  void initState(){
    super.initState();
     movieTextController = TextEditingController(text: '');
  }
  @override
  void dispose() {
    movieTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16,right: 8.0),
              child: TextField(style: const TextStyle(color: Colors.white),
                focusNode: textFocusNode,
                keyboardType: TextInputType.text,enableSuggestions: false,
                  autofocus: false,
// 1
                  onSubmitted: (value) {
                    widget.onSearch(value);
                  },
// 2
                  controller: movieTextController,
                  autocorrect: false,
// 3
                  decoration: InputDecoration(
                    filled: true,
                    focusColor: searchBarBackground,
                    focusedBorder: null,
                    enabledBorder: null,
                    fillColor: searchBarBackground,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'movie name, genre',
                    hintStyle: body1Regular.copyWith(color:
                    posterBorder),
// 4
                    suffixIcon: IconButton(
                      onPressed: () {
                        movieTextController.clear();
                      },
                      icon: const Icon(Icons.close, color:
                      Colors.white,), // Close icon
                    ),
// 5
                    prefixIcon: IconButton(
                      icon: const Icon(Icons.search, color:
                      Colors.white,),
                      onPressed: () {
                        widget.onSearch(movieTextController.text);
                      },
                    ),
                  ),
                  ),
            ),
          )
        ]);
  }

}