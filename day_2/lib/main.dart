import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

      ),
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(
                    CupertinoPageRoute(builder: (context) => SettingsPage()));
              })
        ],
      ),
      body: Container(
        child: Center(
          child: Image.network("https://picsum.photos/300"),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Settings"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              title: Text(
                "About",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ),
            ListTile(
              title: Text(
                "Send Feedback",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.60)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              onTap: () {
                print("Tapped");
              },
            ),
            ListTile(
              title: Text(
                "Report a safety emergency",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.60)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
            ListTile(
              title: Text(
                "Rate us on play store",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.60)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
            ListTile(
              title: Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.60)),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ],
        ),
      ),
    );
  }
}
