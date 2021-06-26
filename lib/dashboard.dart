import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get onDelete => null;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            color: Color.fromRGBO(45, 55, 72, 1),
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 50)),
                Icon(
                  Icons.crop_square_sharp,
                  color: Colors.white,
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                Text(
                  'CSR Management',
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: onDelete,
                        padding: EdgeInsets.only(right: 30),
                        icon: Icon(Icons.notification_add,
                            color: Colors.white, size: 25),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(213, 63, 140, 1),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                        ),
                        child: Text(
                          'Pro plan',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      IconButton(
                        padding:
                            EdgeInsets.only(bottom: 45, right: 70, left: 20),
                        onPressed: onDelete,
                        hoverColor: Colors.deepPurpleAccent,
                        icon: Icon(Icons.account_circle,
                            size: 58.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: screenSize.width * 0.16,
                    color: Colors.grey[300],
                    padding: EdgeInsets.only(top: 60),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        ListTile(
                          leading: Icon(Icons.assessment_outlined),
                          title: Text("Dashboard"),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.home_outlined),
                          title: Text("My Home"),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        ExpansionTile(
                          leading: Icon(Icons.help_outline),
                          title: Text("Assistance"),
                          trailing: Icon(Icons.arrow_right),
                          children: [
                            ListTile(
                              title: Text("I can"),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            ListTile(
                              title: Text("I need"),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                        ExpansionTile(
                          leading: Icon(Icons.people_outline_outlined),
                          trailing: Icon(Icons.arrow_right),
                          title: Text("CSR Cell"),
                          children: [
                            ListTile(
                              title: Text("Core Team"),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            ExpansionTile(
                              trailing: Icon(Icons.arrow_right),
                              title: Text("Registration Form"),
                              children: [
                                ListTile(
                                  title: Text("Core team"),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                ListTile(
                                  title: Text("Recurring events"),
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        ListTile(
                          leading: Icon(Icons.extension),
                          title: Text("Activity"),
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      'DASHBOARD',
                      style: TextStyle(
                        color: Color.fromRGBO(42, 67, 101, 1),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
