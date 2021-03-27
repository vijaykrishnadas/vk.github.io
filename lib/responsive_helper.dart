import 'package:flutter/material.dart';

int min;
int max;

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveWidget({Key key, this.mobile, this.desktop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
      if(constraints.maxWidth < 768){
        min = -1;
        return mobile;
      }
      else{
        min = 1;
        return desktop;
      }
    });
  }
}
