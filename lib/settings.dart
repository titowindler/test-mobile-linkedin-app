import 'package:flutter/material.dart';

class MySettingsPage extends StatefulWidget {
  @override
  _MySettingsPageState createState() => new _MySettingsPageState();
}

class _MySettingsPageState extends State<MySettingsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Stack(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                    //alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop('/profile');
                      },
                      child: Image.asset("assets/arrow-left.png",
                          width: 50, height: 30, fit: BoxFit.contain),
                    )),
              ],
            )),
            Container(
                child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                  //alignment: Alignment.centerLeft,
                  child: Text(
                    'Settings',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                    padding:
                        EdgeInsets.only(top: 80.0, left: 12.0, right: 10.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: GestureDetector(
                                // onTap: () {
                                //   Navigator.of(context).pop('/home');
                                // },
                                child: Center(
                              child: Text(
                                'Account Preferences',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: GestureDetector(
                                // onTap: () {
                                //   Navigator.of(context).pop('/home');
                                // },
                                child: Center(
                              child: Text(
                                'Sign In & Security',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: GestureDetector(
                                // onTap: () {
                                //   Navigator.of(context).pop('/home');
                                // },
                                child: Center(
                              child: Text(
                                'Visibility',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: GestureDetector(
                                // onTap: () {
                                //   Navigator.of(context).pop('/home');
                                // },
                                child: Center(
                              child: Text(
                                'Communications',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: GestureDetector(
                                // onTap: () {
                                //   Navigator.of(context).pop('/home');
                                // },
                                child: Center(
                              child: Text(
                                'Data Privacy',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: GestureDetector(
                                // onTap: () {
                                //   Navigator.of(context).pop('/home');
                                // },
                                child: Center(
                              child: Text(
                                'Help Center',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.red,
                            elevation: 7.0,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/login');
                                },
                                child: Center(
                                  child: Text(
                                    'Sign Out',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ))
              ],
            ))
          ],
        ));
  }
}
