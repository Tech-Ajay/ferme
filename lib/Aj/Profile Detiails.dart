import 'package:ajfereme/constants.dart';
import 'package:ajfereme/screens/profile/components/profile_menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_database/firebase_database.dart';


class ProfileAccountDetails extends StatefulWidget {
  @override
  _ProfileAccountDetailsState createState() => _ProfileAccountDetailsState();
}

class _ProfileAccountDetailsState extends State<ProfileAccountDetails> {
 // final databaseReference = FirebaseDatabase.instance.reference();
  String name="Ajay N";
  String address="Sarovar Surya Bangalore";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.transparent,
),
      body: Column(
          children: [
        Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: FlatButton(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Color(0xFFF5F6F9),
          onPressed: (){},
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: kPrimaryColor,
                width: 22,
              ),
              SizedBox(width: 20),
              Expanded(child: Text("Ajay N"),
              ),
            ],
          ),
        ),
    ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: (){},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Mail.svg",
                      color: kPrimaryColor,
                      width: 22,
                    ),
                    SizedBox(width: 20),
                    Expanded(child: Text("Address : Sarovar Surya Bangalore")),
                  ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}