import 'package:ajfereme/components/coustom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    onWillPop: () async => false,
      child: Scaffold(
        /*appBar: AppBar(

          iconTheme: IconThemeData(
          color: Colors.black,
        ),
          title: Text("Leafeon Ferme",style: TextStyle(
            color: Colors.lightGreen,fontSize: 25
          ),),
          centerTitle: true,
        ),*/
        body: Body(),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }
}
