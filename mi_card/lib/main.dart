import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade500,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/carmine.jpeg'),
                ),
              ),
              Text('Carmine Totera', style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.w300,),
              ),
              Text('MOBILE DEVELOPER', style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                letterSpacing: 2.5),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.tealAccent
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  color: Colors.white,
                  child: ListTile(
                    leading:  Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text('+39 347 8832903',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          color: Colors.teal.shade900
                      ),
                    ),
                  )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                color: Colors.white,
                  child: ListTile(
                    leading:  Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text('info@carminetotera.com',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0,
                            color: Colors.teal.shade900
                        ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
