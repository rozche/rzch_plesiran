import 'package:flutter/material.dart';
import 'package:rozhcecybershool/login.dart';

//import 'package:rozhcecybershool/model/login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6034BB),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Loginpages()),
                );
              },
              icon: const Icon(
                Icons.logout,
                color: Color(0xFFFFFFFF),
              ))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF6034BB),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(60)),
              ),
              accountName: Text(
                'Username',
                style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
              ),
              accountEmail: Text(
                'Email',
                style: TextStyle(fontSize: 15, color: Color(0xFFFFFFFF)),
              ),
              currentAccountPicture:
                  Icon(Icons.person, size: 76, color: Colors.white),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(bottom: 10.0),
              // margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                children: [
                  Container(
                    child: const Icon(
                      Icons.bookmark_add_outlined,
                      size: 30,
                    ),
                    margin: const EdgeInsets.only(right: 5),
                  ),
                  const Text(
                    'User Profile',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            // Text('Username : ${password}'),
          ],
        ),
      ),
    );
  }
}
