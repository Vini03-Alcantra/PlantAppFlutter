import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plantApp/components/my_bottom_nav_bar.dart';
import 'package:plantApp/constants.dart';
import 'package:plantApp/pages/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: (){}
      ),
    );
  }
}
