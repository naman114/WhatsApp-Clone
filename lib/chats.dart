import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColorLight,
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X.jpg'),
                  radius: 25,
                ),
                title: Text('Bill Gates'),
                subtitle: Text('Microsoft is awesome'),
                trailing: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '12:00 AM',
                      style:
                          TextStyle(color: Theme.of(context).primaryColorLight),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        '7',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold),
                      ),
                      radius: 10.0,
                    ),
                  ],
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
