import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green[700],
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.png'),
                ),
                accountName: Text('Ana Paula Hernández'),
                accountEmail: Text('18030536@itcelaya.edu.mx')),
            ListTile(
              title: Text('FruitApp'),
              subtitle: Text('Widget Challenge'),
              leading: Icon(Icons.restaurant, color: Colors.black),
              trailing: Icon(Icons.chevron_right, color: Colors.black),
              onTap: () {
                Navigator.pushNamed(context, '/fruit');
              },
            ),
            ListTile(
              title: Text('NotesApp'),
              subtitle: Text('Test SQLite'),
              leading: Icon(Icons.data_exploration, color: Colors.black),
              trailing: Icon(Icons.chevron_right, color: Colors.black),
              onTap: () {
                Navigator.pushNamed(context, '/notes');
              },
            ),
            ListTile(
              title: Text('MoviesApp'),
              subtitle: Text('Test API'),
              leading: Icon(Icons.movie, color: Colors.black),
              trailing: Icon(Icons.chevron_right, color: Colors.black),
              onTap: () {
                Navigator.pushNamed(context, '/movies');
              },
            ),
            ListTile(
              title: Text('About Us'),
              subtitle: Text('Test Map'),
              leading: Icon(Icons.movie, color: Colors.black),
              trailing: Icon(Icons.chevron_right, color: Colors.black),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            )
          ],
        ),
      ),
    );
  }
}
