import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Center(
            child: Text(
              "Login",
              style: TextStyle(
                  fontFamily: 'UrbanistBold',
                  color: Colors.white,
                  fontSize: 38),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "Welcome to Inside",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
