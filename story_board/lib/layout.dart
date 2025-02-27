import 'package:flutter/material.dart';
import 'package:namer_app/fav.dart';
import 'package:namer_app/startpage.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Only 2 pages (Startpage & Fav)
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text("S T O R I E S"),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xffF2F6D0),
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.brown),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.brown),
                  accountName: Text("Chintu", style: TextStyle(fontSize: 18)),
                  accountEmail: Text("chintu@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("A",
                        style: TextStyle(fontSize: 30, color: Colors.brown)),
                  ),
                ),
              ),
              ListTile(
                title: const Text("Home"),
                leading: const Icon(Icons.home),
                onTap: () => Navigator.pop(context), // Closes drawer
              ),
              ListTile(
                title: const Text("Favorite"),
                leading: const Icon(Icons.favorite),
                onTap: () => Navigator.pop(context), // Closes drawer
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [Startpage(), Fav()], // Pages for each tab
        ),
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(icon: Icon(Icons.favorite), text: "Favorites"),
          ],
        ),
      ),
    );
  }
}
