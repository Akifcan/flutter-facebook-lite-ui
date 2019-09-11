import 'package:flutter/material.dart';

class Shareds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        sharedItem(),
        sharedItem(),

      ],
    ));
  }

  Column sharedItem(){
    return Column(
      children: <Widget>[
         ListTile(
          leading: Image.network(
            'https://images.unsplash.com/photo-1531206715517-5c0ba140b2b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
            width: 50.0,
            height: 50.0,
          ),
          title: Text('Team'),
          subtitle: Text('1 Hour Ago'),
          trailing: Icon(Icons.add_box),
        ),
        Container(
            width: double.infinity,
            height: 200.0,
            color: Colors.red,
            child: Image.network(
                'https://images.unsplash.com/photo-1511632765486-a01980e01a18?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                fit: BoxFit.cover)),
        SizedBox(
          height: 2.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '💗',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              '🅰️',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              ' 💯 ',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Text('Like'),
            ),
            Container(
              child: Text('Comment'),
            ),
            Container(
              child: Text('Share'),
            )
          ],
        )
      ],
    );
  }

}
