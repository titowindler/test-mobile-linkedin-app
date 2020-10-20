import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  @override
  _MyProfilePageState createState() => new _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 2.0)
              ], color: Colors.white),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.settings),
                color: Colors.black.withOpacity(0.7),
                onPressed: () {
                  Navigator.of(context).pushNamed('/settings');
                },
              ),
            ),
            Positioned(
              top: 50.0,
              left: 15.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 105.0,
                    width: 105.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62.5),
                        image: DecorationImage(
                            image: AssetImage('assets/user-1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 15.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Andrei Militante',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width - 175.0,
                              child: Text(
                                  'Attended University of Southern Philippines',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold)))
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'University of Southern Philippines',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 5.0),
                      Container(
                          width: MediaQuery.of(context).size.width - 175.0,
                          child: Text(
                              'Cebu, Central Visayas, Philippines - 0 Connections',
                              style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey))),
                    ],
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(height: 20.0),
          Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '1,789',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.red,
                        ),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '2,000',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '1,500',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Likes',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              )),
          SizedBox(height: 25.0),
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/user-2.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(width: 10.0),
                Container(
                  height: 200.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/user-3.jpg'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.grey.withOpacity(0.2)),
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black.withOpacity(0.7),
                    onPressed: () {
                      Navigator.of(context).pop('/landing');
                    },
                  ),
                ),
              ),
              Container(
                height: 40.0,
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black.withOpacity(0.7)),
                child: Center(
                    child: Text('EDIT PROFILE',
                        style: TextStyle(color: Colors.white, fontSize: 15.0))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
