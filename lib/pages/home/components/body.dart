import 'package:flutter/material.dart';
import 'package:plantApp/constants.dart';
import 'package:plantApp/pages/home/components/header_with_search_box.dart';
import 'package:plantApp/pages/home/components/recomneds_plants.dart';
import 'package:plantApp/pages/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomendado",press: (){}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Futuras Plantas",press: (){}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FeaturePlantCard(image: "assets/images/bottom_img_1.png", press: (){}),
                FeaturePlantCard(image: "assets/images/bottom_img_2.png", press: (){})
              ]            
            ),
          )
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({Key key, this.image, this.press,}) : super(key: key);

  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(  
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(  
            fit: BoxFit.cover,
            image: AssetImage(image)
          )
        ),
      ),
    );
  }
}

