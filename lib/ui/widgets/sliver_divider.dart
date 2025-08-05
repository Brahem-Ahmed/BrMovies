import 'package:br_movies/ui/theme/theme.dart';
import 'package:flutter/material.dart';

class SliverDivider extends StatelessWidget{
  const SliverDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
        padding: EdgeInsets.only(
            left: 16, top: 8 ,right:  16, bottom:  8
        ),
    sliver: SliverToBoxAdapter(
        child: Divider(color: primaryButton,thickness: 2.0,
    )
    )
    );
  }
  
}