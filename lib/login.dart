import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => new _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
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
                  child: Image.asset("assets/linkedin-logo.png",
                      width: 100, height: 50, fit: BoxFit.contain),
                )
              ],
            )),
            Container(
                child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                  //alignment: Alignment.centerLeft,
                  child: Text(
                    'Sign In',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    padding:
                        EdgeInsets.only(top: 80.0, left: 12.0, right: 10.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Email or Phone',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black))),
                          obscureText: true,
                        ),
                        SizedBox(height: 5.0),
                        Container(
                          alignment: Alignment(-1.2, 0.0),
                          padding: EdgeInsets.only(top: 15.0, left: 20.0),
                          child: InkWell(
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        SizedBox(height: 40.0),
                        Container(
                          height: 40.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(20.0),
                            shadowColor: Colors.blue,
                            color: Colors.blue,
                            elevation: 7.0,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/landing');
                                },
                                child: Center(
                                  child: Text(
                                    'CONTINUE',
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
                            color: Colors.transparent,
                            child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black,
                                        style: BorderStyle.solid,
                                        width: 1.0),
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Center(
                                        child: Image.asset(
                                            'assets/google-logo.png',
                                            width: 40,
                                            height: 20),
                                      ),
                                      Center(
                                        child: Text('SIGN IN WITH GOOGLE',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue)),
                                      )
                                    ])))
                      ],
                    ))
              ],
            ))
          ],
        ));
  }
}
