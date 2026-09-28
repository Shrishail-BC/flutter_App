import 'package:flutter/material.dart';

 class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // SizedBox(height: 50,),
          const DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Column(
              // padding: EdgeInsets.all(20),
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
              Icon(Icons.account_circle, size: 50, color: Colors.white,),
                SizedBox(height: 10),
                Text('My App', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.white,),
            title: const Text('Home', style: TextStyle(color: Colors.white),),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle, color: Colors.white,),
            title: const Text('Profile', style: TextStyle(color: Colors.white),),
            // onTap: () {
            //   Navigator.pushNamed(context, '/home');
            // },
          ),
          ListTile(
            leading: Icon(Icons.login, color: Colors.white,),
            title: const Text('Login', style: TextStyle(color: Colors.white),),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}