import 'package:flutter/material.dart';
import 'package:rozhcecybershool/homepage.dart';
import 'package:rozhcecybershool/login/inputdata.dart';
import 'package:rozhcecybershool/login/header.dart';
import 'package:rozhcecybershool/model/login.dart';

class Loginpages extends StatefulWidget {
  const Loginpages({Key? key, String? password, String? username})
      : super(key: key);

  @override
  _LoginpagesState createState() => _LoginpagesState();
}

class _LoginpagesState extends State<Loginpages> {
  void chkLoginstate() {
    if (getLoginState() != 1) {
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bg_login.jpg',
              ),
              fit: BoxFit.fitHeight),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color(0x006034BB),
              Color(0xFF7142CE),
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 90,
            ),
            const Header(),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
                decoration: const BoxDecoration(
                  color: Color(0xfffffafa),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
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
