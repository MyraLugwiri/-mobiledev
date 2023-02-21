import 'package:flutter/material.dart';
import 'package:navigation/chat.dart';

class gridScreen extends StatelessWidget {
  // const secondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icon Grid'),
        ),
        body: Container(
          child: GridView.count(
            crossAxisCount: 3,
            padding: EdgeInsets.all(4.0),
            childAspectRatio: 1.0,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: const [
              GridTile(child: Icon(Icons.ac_unit_sharp)),
              GridTile(child: Icon(Icons.access_time_outlined)),
              GridTile(child: Icon(Icons.add_a_photo_outlined)),
              GridTile(child: Icon(Icons.table_view)),
              GridTile(child: Icon(Icons.kayaking_outlined)),
              GridTile(child: Icon(Icons.zoom_out_map_rounded))
            ],
          ),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.collections), label: 'Gallery')
        ]));
  }
}
