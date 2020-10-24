import 'package:flutter/material.dart';
import 'API.dart';
import 'dart:convert';

class MyLandingPage extends StatefulWidget {
  MyLandingPage();

  @override
  _MyLandingPageState createState() => new _MyLandingPageState();
}

class _MyLandingPageState extends State<MyLandingPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  String url;
  var Data;
  String QueryText = '';

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(children: [
        Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu, color: Colors.black),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/profile');
                      },
                    ),
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 4.0,
                              spreadRadius: 1.0,
                              offset: Offset(0.0, 3.0))
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/user-1.jpg'),
                            fit: BoxFit.contain)),
                  ),
                ])),
        Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Container(
                padding: EdgeInsets.only(left: 5.0),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.0)),
                child: TextField(
                  onChanged: (value) {
                    url = 'http://10.0.2.2:5000/api?Query=' + value.toString();
                  },
                  decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: GestureDetector(
                        onTap: () async {
                          Data = await Getdata(url);
                          var DecodedData = jsonDecode(Data);
                          setState(() {
                            QueryText = DecodedData['Search'];
                          });
                        },
                        child: Icon(Icons.search)),
                    hintStyle: TextStyle(fontSize: 14.0),
                    border: InputBorder.none,
                    fillColor: Colors.grey.withOpacity(0.5),
                    // prefixIcon: Icon(Icons.search, color: Colors.grey)
                  ),
                ))),
        SizedBox(height: 10.0),
        Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              QueryText,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            )),
        SizedBox(height: 10.0),
        Padding(
            padding: EdgeInsets.all(15.0),
            child: Material(
                borderRadius: BorderRadius.circular(15.0),
                elevation: 4.0,
                child: Container(
                  height: 400.0,
                  width: double.infinity,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/harvard-logo.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: MediaQuery.of(context).size.width - 120.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Harvard University',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 2.0),
                                      Text(
                                        '1,448,777 Followers',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                      SizedBox(height: 2.0),
                                      Text(
                                        '22h Ago',
                                        style: TextStyle(fontSize: 12.0),
                                      ),
                                    ]),
                                Icon(Icons.more_vert,
                                    color: Colors.grey, size: 20.0),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'Professor Catherine Dulac has been awarded a 2021 Breakthrough Prize in Life Sciences for her pioneering work identifying the neural circuitry that regulates.',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0,
                            color: Colors.black),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 180.0,
                            width: 300.0,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/catherine-dulac-2.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 1.0,
                        width: double.infinity,
                        decoration:
                            BoxDecoration(color: Colors.grey.withOpacity(0.5)),
                      ),
                      SizedBox(height: 10.0),
                      Row(children: <Widget>[
                        Icon(Icons.reply,
                            color: Colors.grey.withOpacity(0.4), size: 20.0),
                        SizedBox(width: 5.0),
                        Text('5.0k', style: TextStyle(color: Colors.grey)),
                        SizedBox(width: 15.0),
                        Icon(Icons.comment,
                            color: Colors.grey.withOpacity(0.4), size: 20.0),
                        SizedBox(width: 5.0),
                        Text('1.5k', style: TextStyle(color: Colors.grey)),
                      ]),
                    ],
                  ),
                )))
      ]),
      bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home, color: Colors.black, size: 15.0),
                ),
                Tab(
                  icon: Icon(Icons.account_box_rounded,
                      color: Colors.grey, size: 15.0),
                ),
                Tab(
                  icon: Icon(Icons.add_circle, color: Colors.grey, size: 15.0),
                ),
                Tab(
                  icon: Icon(Icons.notification_important,
                      color: Colors.grey, size: 15.0),
                ),
              ])),
    );
  }
}
