import 'package:flutter/material.dart';
import 'package:plantApp/pages/home/components/header_with_search_box.dart';
import 'package:plantApp/pages/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
          child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomendado",
            press: (){},
          )
        ],
      ),
    );
  }
}

