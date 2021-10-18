import 'package:flutter/material.dart';
import 'package:rozhcecybershool/homepage.dart';

// Define a custom Form widget.
class InputData extends StatefulWidget {
  const InputData({Key? key}) : super(key: key);

  @override
  InputDataState createState() {
    return InputDataState();
  }
}

class InputDataState extends State<InputData> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xFF7142CE))),
              ),
              child: TextField(
                controller: _username,
                decoration: const InputDecoration(
                    hintText: "Enter Email",
                    hintStyle: TextStyle(color: Color(0xFF7142CE)),
                    border: InputBorder.none),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xFF7142CE))),
              ),
              child: TextField(
                controller: _password,
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  hintStyle: TextStyle(color: Color(0xFF7142CE)),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(200, 40, 5, 20),
              child: const Text(
                "Forgot Password",
                style: TextStyle(
                  color: Color(0xFF7142CE),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              margin: const EdgeInsets.fromLTRB(5, 20, 5, 20),
              decoration: BoxDecoration(
                color: const Color(0xFF7142CE),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
