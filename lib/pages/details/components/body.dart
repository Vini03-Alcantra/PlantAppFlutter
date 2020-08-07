import 'package:flutter/material.dart';
import 'package:plantApp/pages/details/components/image_and_icons.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size)
        ]
      ),
    );
  }
}

