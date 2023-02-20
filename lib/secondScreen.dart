import 'package:flutter/material.dart';
import 'package:navigation/chat.dart';

class secondScreen extends StatelessWidget {
  // const secondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: Column(
          children: [
            DataTable(columns: const [
              DataColumn(label: Text('First Name')),
              DataColumn(label: Text('Last Name')),
              DataColumn(label: Text('Grade'))
            ], rows: const [
              DataRow(cells: [
                DataCell(Text('Myra')),
                DataCell(Text('Lugwiri')),
                DataCell(Text('A'))
              ]),
              DataRow(cells: [
                DataCell(Text('Roselyn')),
                DataCell(Text('Sanchez')),
                DataCell(Text('A'))
              ]),
              DataRow(cells: [
                DataCell(Text('Jane')),
                DataCell(Text('Katelyn')),
                DataCell(Text('B'))
              ]),
              DataRow(cells: [
                DataCell(Text('Kate')),
                DataCell(Text('Winslet')),
                DataCell(Text('B+'))
              ])
            ]),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => ChatDisplay()),
                      ));
                }),
                child: const Text(
                  'Go to chat',
                )),
          ],
        ),
        // GridView.count(
        //   crossAxisCount: 3,
        //   padding: EdgeInsets.all(4.0),
        //   childAspectRatio: 1.0,
        //   mainAxisSpacing: 4.0,
        //   crossAxisSpacing: 4.0,
        //   children: const [
        //     GridTile(child: Icon(Icons.ac_unit_sharp)),
        //     GridTile(child: Icon(Icons.access_time_outlined)),
        //     GridTile(child: Icon(Icons.add_a_photo_outlined)),
        //     GridTile(child: Icon(Icons.table_view)),
        //     GridTile(child: Icon(Icons.kayaking_outlined)),
        //   ],
        // ),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.collections), label: 'Gallery')
        ]));
  }
}
