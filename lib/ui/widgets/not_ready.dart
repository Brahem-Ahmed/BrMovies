import 'package:flutter/material.dart';

class NotReady extends StatelessWidget {
  const NotReady({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}