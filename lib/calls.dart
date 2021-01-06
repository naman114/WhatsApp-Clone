import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColorLight,
        child: Icon(Icons.call),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X.jpg'),
                  radius: 25,
                ),
                title: Text('Bill Gates'),
                subtitle: Row(
                  children: [
                    // Transform.rotate(
                    //   angle: pi / 4,
                    //   child: Icon(
                    //     Icons.arrow_downward,
                    //     color: Theme.of(context).primaryColorLight,
                    //   ),
                    // ),
                    Icon(
                      Icons.call_received,
                      color: Theme.of(context).primaryColorLight,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Yesterday, 7:03 PM'),
                  ],
                ),
                trailing: Icon(
                  Icons.call,
                  color: Theme.of(context).primaryColor,
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
