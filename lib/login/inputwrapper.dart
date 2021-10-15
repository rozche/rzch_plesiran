import 'package:flutter/material.dart';
import 'package:rozhcecybershool/login/inputdata.dart';
import 'button.dart';

class InputWrapper extends StatelessWidget {
  const InputWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0x00000000),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const InputData(), //Class TextFormField file inputfield.dart
          ),

          const SizedBox(
            height: 40,
          ),

          const Text(
            "Forgot Password",
            style: TextStyle(
              color: Colors.white,
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          const Button() //Class Button file button.dart
        ],
      ),
    );
  }
}
