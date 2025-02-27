import 'package:flutter/material.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(
            backgroundColor: Color(0xffF2F6D0),
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                  ), //BoxDecoration
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.brown),
                    accountName: Text(
                      "Chintu ",
                      style: TextStyle(fontSize: 18),
                    ),

                    accountEmail: Text("chintu@gmail.com"),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 30.0, color: Colors.brown),
                      ), //Text
                    ), //circleAvatar
                  ), //UserAccountDrawerHeader
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text("Favourite"),
                  leading: Icon(Icons.favorite),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          backgroundColor: Color(0xffF2F6D0),
          appBar: AppBar(
            backgroundColor: Color(0xffF2F6D0),
            title: Center(
              child: Text(
                "S T O R I E S",
                style: TextStyle(
                  color: const Color.fromARGB(255, 99, 71, 61),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Text(
                      "Story - 1",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffF2F6D0),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Text(
                      "Story - 2",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffF2F6D0),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Text(
                      "Story - 3",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffF2F6D0),
                      ),
                    ),
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.all(10),
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Text(
                      "Story - 1",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffF2F6D0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.favorite),
              )
            ],
          ),
        ),
      ),
    );
  }
}
