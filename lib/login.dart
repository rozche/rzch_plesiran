import 'package:flutter/material.dart';
import 'package:rozhcecybershool/login/inputdata.dart';
import 'package:rozhcecybershool/login/header.dart';
// import 'login/inputfield.dart';

class Loginpages extends StatefulWidget {
  const Loginpages({Key? key}) : super(key: key);

  @override
  _LoginpagesState createState() => _LoginpagesState();
}

class _LoginpagesState extends State<Loginpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Color(0xFFFAA830), Color(0xFFFDC830)]),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            const Header(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
                decoration: const BoxDecoration(
                  color: Color(0xfffffafa),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: const InputData(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
