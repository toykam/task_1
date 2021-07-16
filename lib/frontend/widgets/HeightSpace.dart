import 'package:flutter/material.dart';

class ColumnSpace extends StatelessWidget {
  ColumnSpace(this.height,{Key key}) : super(key: key);
  double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height,);
  }
}

class RowSpace extends StatelessWidget {
  RowSpace(this.space,{Key key}) : super(key: key);
  double space;
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: space,);
  }
}
