import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SideBar extends StatelessWidget {
  String title;
  Icon icon;
  SideBar({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 10.0),
      // margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Container(
            child: icon, //Icon Ret
            margin: const EdgeInsets.only(right: 5),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
