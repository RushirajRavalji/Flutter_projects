import 'package:flutter/material.dart';

class Expe extends StatelessWidget {
  const Expe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
            children: [
              Center(child: Icon(Icons.music_note, size: 100)),
              Center(child: Icon(Icons.music_video, size: 100)),
              Center(child: Icon(Icons.camera_alt, size: 100)),
              Center(child: Icon(Icons.grade, size: 100)),
              Center(child: Icon(Icons.email, size: 100)),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.music_note)),
              Tab(icon: Icon(Icons.music_video)),
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(icon: Icon(Icons.grade)),
              Tab(icon: Icon(Icons.email)),
            ],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}
