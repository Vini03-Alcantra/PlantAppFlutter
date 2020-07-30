import 'package:flutter/material.dart';
import 'package:plantApp/constants.dart';
import 'package:plantApp/pages/home/components/header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
          child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children:<Widget>[
                TitleWithCustomUnderline(text: "Recomendado"),
                Spacer(),
                FlatButton(  
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: kPrimaryColor,
                  onPressed: (){},
                  child: Text(  
                    "More",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  
  const TitleWithCustomUnderline({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children:<Widget>[
          Padding(  
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(  
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),                    
            ),                  
          ),
          Positioned(  
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(  
              margin: EdgeInsets.only(right: kDefaultPadding/4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ]
      ),
    );
  }
}

