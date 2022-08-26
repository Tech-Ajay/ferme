import 'package:ajfereme/Aj/Customer.dart';
import 'package:ajfereme/Aj/Register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ajfereme/Buy/models/Product.dart';
import 'package:ajfereme/Buy/screens/details/components/cart_counter.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {



  const AddToCart({
    Key key,
    @required this.product,@required this.customer

  }) : super(key: key);

  final Product product;



final Customer customer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: product.color,
              ),
              onPressed: () {

              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () async{

    FirebaseFirestore.instance.collection("Ferme").doc(FirebaseAuth.instance.currentUser.email).collection("ordered")
        .add({
    "Product Name":product.title,
    "Product Id":product.id,
    "Product Price":product.price,
    "Product Size":"3",
    // "Product Color":product.color,
    "Product Ordered Time": new DateTime.now()
    }).then((response) {
    Navigator.pop(context);

    }).catchError((Error)=>print(Error));
    print(customer.name);
    createData(customer.name,FirebaseAuth.instance.currentUser.email,product.title,product.id.toString(),product.price.toString(),"3");

    },

                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void createData(String Name,String email,String title,String id, String price,String size) {
    final databaseReference = FirebaseDatabase.instance.reference();
    databaseReference.child("User "+Name).child("Orders").child(id).set({
      'id':id,
      'title': title,
      'price': price,
      'size': size
    });
  }
}
