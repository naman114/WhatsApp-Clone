import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColorLight,
        child: Icon(Icons.camera_alt),
      ),
      body: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X.jpg'),
              radius: 25,
            ),
            title: Text('My status'),
            subtitle: Text('Tap to add status update'),
          ),
          Container(
            height: 35.0,
            width: double.infinity, //otherwise width is set to text length
            color: Colors.grey[300],
            child: Text('Recent updates'),
            padding: EdgeInsets.all(10.0),
          ),
          RecentUpdate(),
          RecentUpdate(),
          RecentUpdate(),
          RecentUpdate(),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 7,
          //     itemBuilder: (context, index) {
          //       return Column(
          //         children: [
          //           ListTile(
          //             contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          //             leading: Container(
          //               height: 50,
          //               width: 50,
          //               decoration: BoxDecoration(
          //                 image: DecorationImage(
          //                   image: NetworkImage(
          //                       'https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X.jpg'),
          //                 ),
          //                 borderRadius: BorderRadius.circular(50.0),
          //                 border: Border.all(
          //                     color: Theme.of(context).primaryColorLight,
          //                     width: 2.0),
          //               ),
          //             ),
          //             title: Text('Bill Gates'),
          //             subtitle: Text('Yesterday, 11:42 PM'),
          //           ),
          //           Divider(),
          //         ],
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}

class RecentUpdate extends StatelessWidget {
  const RecentUpdate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://pbs.twimg.com/profile_images/988775660163252226/XpgonN0X.jpg'),
              ),
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                  color: Theme.of(context).primaryColorLight, width: 2.0),
            ),
          ),
          title: Text('Bill Gates'),
          subtitle: Text('Yesterday, 11:42 PM'),
        ),
        Divider(),
      ],
    );
  }
}
