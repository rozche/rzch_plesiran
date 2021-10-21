import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plesiran/destination.dart';
import 'package:plesiran/model/sidebar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF6034BB),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(40)),
              ),
              accountName: Text(
                'Username',
                style: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
              ),
              accountEmail: Text(
                'Email',
                style: TextStyle(fontSize: 15, color: Color(0xFFFFFFFF)),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundColor: Color(0xFF778899),
                backgroundImage: AssetImage("assets/images/avatar.jpg"),
              ),
            ),
            //SIDEBAR MENU LIST
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Destionations(),
                  ),
                );
              },
              child: SideBar(
                  title: 'Home', icon: const Icon(Icons.bookmark_add_outlined)),
            ),

            SideBar(title: 'Profile', icon: const Icon(Icons.ac_unit)),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(
          child: Text(
            'Plesiran.com',
            style: TextStyle(color: Colors.white, letterSpacing: 1),
          ),
        ),
        backgroundColor: const Color(0xFF6034BB),
        actions: [
          IconButton(
              onPressed: () {
                SystemNavigator.pop();
              },
              icon: const Icon(
                Icons.logout,
              ))
        ],
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
