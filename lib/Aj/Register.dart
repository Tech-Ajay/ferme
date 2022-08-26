import 'package:ajfereme/screens/login_success/login_success_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ajfereme/Aj/Customer.dart';
import 'package:firebase_database/firebase_database.dart';


class Register extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final databaseReference = FirebaseDatabase.instance.reference();

  var _formKey = GlobalKey<FormState>();
  Customer _student;
  var namecontroller = TextEditingController();
  var _addresscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:38.0),
              ),
              Center(
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:AssetImage('assets/images/leafeon.png'),
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Text(
                "Register Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: namecontroller,
                          decoration: InputDecoration(
                              labelText: "Name",
                              icon: Icon(Icons.account_circle)),
                          validator: (value) =>
                          (value.isEmpty) ? "Please Enter Your Name" : null,
                          autofocus: false,
                        ),
                        TextFormField(
                          controller: _addresscontroller,
                          decoration: InputDecoration(
                              labelText: "Address",
                              icon: Icon(Icons.event_note_outlined)),
                          validator: (value) =>
                          (value.isEmpty) ? "Please Enter Your Address" : null,
                          autofocus: false,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: RaisedButton(
                            child: Text(
                              "Submit Here",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              if(_addresscontroller.text.isNotEmpty && namecontroller.text.isNotEmpty)
                              {
                              FirebaseFirestore.instance.collection("Ferme").doc(FirebaseAuth.instance.currentUser.email).collection("Users")
                                  .add({
                              "email":FirebaseAuth.instance.currentUser.email,
                              "name":namecontroller.text,
                              "address":_addresscontroller.text,
                              "timeStamp":new DateTime.now()
                              }).then((value) {
                              Navigator.push(this.context,MaterialPageRoute(
                              builder: (context) => LoginSuccessScreen()));
                              });
                              }
                              else
                              {
                              print("empty");
                              }
                              _onSubmit();
                              createData(FirebaseAuth.instance.currentUser.email,namecontroller.text,_addresscontroller.text);

                            },
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          child: Text(
                            "For Login Click Here",
                            style: TextStyle(fontSize: 15),
                          ),
                          onTap: () {
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  _onSubmit() async {
    if (_formKey.currentState.validate()) {
      if (_student == null) {
        Customer customer = Customer(
            name:namecontroller.text,
            address: _addresscontroller.text);
        print(customer);

      }
    }
  }
  void createData(String email,String name, String address) {
    databaseReference.child("User "+name).child("UserDetails").set({
      'name':name,
      'email': email,
      'address': address
    });
  }
}
