import 'package:ajfereme/screens/sign_in/components/body.dart';
import 'package:ajfereme/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ajfereme/Aj/Profile Detiails.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  LoginService loginService = LoginService();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {
            Navigator.push(context, MaterialPageRoute(
            builder: (context) => ProfileAccountDetails())),

          },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press:  ()  {

                //  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SplashScreen()));

            }
          ),
        ],
      ),
    );
  }
}
