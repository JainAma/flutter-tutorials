import 'package:flutter/material.dart';

import 'file_manager.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((dynamic) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FileManager()));
    });
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/people.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Text(
                "File Manager",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
