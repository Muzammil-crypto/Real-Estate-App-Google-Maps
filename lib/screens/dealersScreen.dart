// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gmaps/constants.dart';
import 'package:flutter_gmaps/screens/ProfileScreen.dart';

class DealersScreen extends StatefulWidget {
  const DealersScreen({Key key}) : super(key: key);

  @override
  _DealersScreenState createState() => _DealersScreenState();
}

class _DealersScreenState extends State<DealersScreen> {
  TextEditingController searchController = TextEditingController();
  List<String> urls = [
    'assets/images/IMG_0900.JPG',
    'assets/images/IMG_0900.JPG',
    'assets/images/IMG_0900.JPG',
    'assets/images/IMG_0900.JPG',
  ];

  List<String> innerUrls = [
    'assets/images/116352550-400x300.jpg',
    'assets/images/Park-View-Homes-1024x682.jpg',
    'assets/images/116352550-400x300.jpg',
    'assets/images/Park-View-Homes-1024x682.jpg'
        'assets/images/116352550-400x300.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Center(
            child: Text("Builders"),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black26,
              ),
              margin: EdgeInsets.fromLTRB(10, 30, 10, 15),
              child: TextFormField(
                controller: searchController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  focusColor: Colors.grey,
                  hoverColor: Color(0xff25283a),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: urls.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (builder) => ProfileScreen()));
                            },
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/IMG_0900.JPG',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            title: Text(
                              "A.Liza",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              "munibs47@gmai.com",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            trailing: Container(
                              width: 90,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.green),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.chat,
                                          color: Colors.green,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        callTo();
                                      },
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Icon(
                                          Icons.call_outlined,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width - 10,
                              height: 120,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: innerUrls.length,
                                  itemBuilder: (BuildContext context, int ind) {
                                    return Container(
                                      margin: EdgeInsets.all(10),
                                      width: 100,
                                      height: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/116352550-400x300.jpg'),
                                            fit: BoxFit.fill),
                                      ),
                                    );
                                  }) /*ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 100,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/116352550-400x300.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 100,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Park-View-Homes-1024x682.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 100,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/116352550-400x300.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 100,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Park-View-Homes-1024x682.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 100,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/116352550-400x300.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 100,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Park-View-Homes-1024x682.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ],
                            ),*/
                              ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      );
                    }),
              ),
            ),
            /*Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * (0.74),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => ProfileScreen()));
                      },
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/IMG_0900.JPG',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        "A.Liza",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "munibs47@gmai.com",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Container(
                        width: 90,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  callTo();
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.call_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => ProfileScreen()));
                      },
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/IMG_0900.JPG',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        "A.Liza",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "munibs47@gmai.com",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Container(
                        width: 90,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  callTo();
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.call_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/IMG_0900.JPG',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        "A.Liza",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "munibs47@gmai.com",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Container(
                        width: 90,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  callTo();
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.call_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/IMG_0900.JPG',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      title: Text(
                        "A.Liza",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "munibs47@gmai.com",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Container(
                        width: 90,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.chat,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  callTo();
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Icon(
                                    Icons.call_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 10,
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/116352550-400x300.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 100,
                            height: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Park-View-Homes-1024x682.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }

  Future<void> smsTo() async {
    final Uri launchUri = Uri(
      scheme: 'sms',
      path: "03120944035",
    );
    try {
      var bool = await launch(launchUri.toString());
    } catch (e) {
      print(e);
    }
  }

  Future<void> callTo() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: "03120944035",
    );
    try {
      var bool = await launch(launchUri.toString());
    } catch (e) {
      print(e);
    }
  }
}
