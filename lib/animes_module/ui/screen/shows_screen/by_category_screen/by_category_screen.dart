import 'package:flutter/material.dart';
import 'package:inject/inject.dart';

@provide
class ByCategoryScreen extends StatefulWidget {
  @override
  _ByCategoryScreenState createState() => _ByCategoryScreenState();
}

class _ByCategoryScreenState extends State<ByCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(' Categories Page'));
  }
}
