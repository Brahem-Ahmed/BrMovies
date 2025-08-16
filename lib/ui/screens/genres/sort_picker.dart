import 'package:br_movies/utils/utils.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

 typedef OnSortSelected = void Function(Sorting);


 class SortPicker extends ConsumerStatefulWidget {
  final OnSortSelected onSortSelected;
  final bool useSliver;

  const SortPicker( {required this.useSliver,required this.onSortSelected,super.key});


  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SortPickerState() ;
  }


class _SortPickerState extends ConsumerState<SortPicker> {
  Sorting selectedSort = Sorting.aToz;

  @override
  Widget build(BuildContext context) {
    if (widget.useSliver) {
      return SliverToBoxAdapter(
          child: buildRow()
      );
    } else {
      return buildRow();
    }
  }
  Widget buildRow() {
    return Row(
      children: [
        Spacer(),
        Text(selectedSort.name, style: Theme
            .of(context)
            .textTheme
            .labelLarge,),
        addHorizontalSpace(16),
        PopupMenuButton<Sorting>(
          icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
          onSelected: (Sorting value) {
            widget.onSortSelected(value);
          },
          itemBuilder: (BuildContext context) {
            return Sorting.values.mapIndexed<PopupMenuItem<Sorting>>((int index,
                Sorting sort) {
// 5
              return CheckedPopupMenuItem<Sorting>
                (
                checked: selectedSort == sort,
                value: sort,
                onTap: () {
                  setState(() {
                    selectedSort = sort;
                  });
                },
                child: Text(sort.name),
              );
            }).toList();
          },
        ),
      ],
    );
  }
}
