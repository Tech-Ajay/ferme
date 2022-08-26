import 'package:ajfereme/components/coustom_bottom_nav_bar.dart';
import 'package:ajfereme/components/default_button.dart';
import 'package:ajfereme/enums.dart';
import 'package:ajfereme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(
          color: Colors.transparent,
          child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Text('Bangalore', style: new TextStyle(color: Colors.black)),
                            Text('Sunny', style: new TextStyle(color: Colors.black, fontSize: 32.0)),
                            Text('72°F',  style: new TextStyle(color: Colors.black)),
                            Image.network('https://openweathermap.org/img/w/01d.png'),
                            Text('June 18, 2021', style: new TextStyle(color: Colors.black)),
                            Text('13:20', style: new TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: new Icon(Icons.refresh),
                          tooltip: 'Refresh',
                          onPressed: () => null,
                          color: Colors.black,
                        ),
                      ),

                    SizedBox(height: getProportionateScreenHeight(20)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DefaultButton(
                            text: "View Detailed Weather Report",
                            press: () {
                              launchURL(
                                  "https://www.accuweather.com/en/in/bengaluru/204108/weather-forecast/204108");

                            },
                            ),
                    ),
        ]
    ),
          ),
        ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.favourite),

    );
  }
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}