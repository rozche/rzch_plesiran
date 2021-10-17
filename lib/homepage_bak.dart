import 'package:flutter/material.dart';
import 'package:rozhcecybershool/login.dart';

class Home extends StatelessWidget {
  final String username, password;
  const Home({
    Key? key,
    required this.username,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Loginpages(
                            username: '',
                          )),
                );
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                username,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
              accountEmail: Text(password),
              currentAccountPicture:
                  const Icon(Icons.person, size: 76, color: Colors.white),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            // Text('Username : $username'),
            // Text('Username : $password'),
            // Text('Username : ${password}'),
          ],
        ),
      ),
    );
  }
}
