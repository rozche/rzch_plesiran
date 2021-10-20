import 'package:flutter/material.dart';

class Destionations extends StatefulWidget {
  const Destionations({Key? key}) : super(key: key);

  @override
  _DestionationsState createState() => _DestionationsState();
}

class _DestionationsState extends State<Destionations> {
  final _list = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: const BoxDecoration(
                    color: Color(0xFF7142CE),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.asset(
                            "assets/images/avatar.jpg",
                            height: 120,
                            width: 120,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _list[index],
                            style: const TextStyle(
                              fontSize: 20,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: const Text(
                              " XLorem Ipsum is simply \n dummy text of the printing and\n typesetting industry. ",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
