import 'package:flutter/material.dart';

import 'chat_model.dart';

class ChatDisplay extends StatefulWidget {
  @override
  State<ChatDisplay> createState() => _ChatDisplay();
}

class _ChatDisplay extends State<ChatDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: ChatModel.dummyData.length,
              itemBuilder: (context, index) {
                ChatModel _model = ChatModel.dummyData[index];
                return Column(
                  children: <Widget>[
                    Divider(
                      height: 10.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 24.0,
                        backgroundImage: NetworkImage(_model.avatarUrl),
                      ),
                      title: Row(
                        children: [
                          Text(_model.name),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            _model.datetime,
                            style: const TextStyle(fontSize: 12.0),
                          )
                        ],
                      ),
                      subtitle: Text(_model.message),
                      trailing: const Icon(
                        Icons.arrow_forward,
                        size: 14.0,
                      ),
                    )
                  ],
                );
              }),
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
