import 'package:facebook_ui/shareds.dart';
import 'package:facebook_ui/stories.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Facebook Lite',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.lightBlue),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () => null,
          child: Icon(Icons.account_circle, color: Colors.white),
        ),
        title: TextField(
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: 'Ara',
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () => null,
            child: Icon(Icons.camera_alt, color: Colors.white),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          TabBar(
            controller: tabController,
            tabs: <Widget>[
              _tabItems(Icons.event, true),
              _tabItems(Icons.supervisor_account, true),
              _tabItems(Icons.message, false),
              _tabItems(Icons.videocam, false),
              _tabItems(Icons.view_headline, false),
            ],
          ),
          SizedBox(height: 5.0),
          _createPost(),
          SizedBox(
            height: 10.0,
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Hikayeler',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    Text('Arişivin', style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
              Stories(),
            ],
          ),
          Container(
            height: 290.0,
            child: ListView(
              children: <Widget>[
                Shareds(),
              ],
            )
          )
        ],
      ),
    );
  }

  Column _createPost() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipRRect(
              borderRadius: new BorderRadius.circular(50.0),
              child: Image.network(
                'https://images.unsplash.com/photo-1555760113-2ff3079217cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=640&q=80',
                height: 50.0,
                width: 50.0,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 50.0),
              child: Text('Bir Durum Güncellemesi Paylaş'),
            ),
            _createFlatButton(Icons.camera_alt)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () => null,
              child: Row(
                children: <Widget>[Icon(Icons.edit), Text('Yazı')],
              ),
            ),
                        InkWell(
              onTap: () => null,
              child: Row(
                children: <Widget>[Icon(Icons.videocam), Text('Live Video')],
              ),
            ),
            InkWell(
              onTap: () => null,
              child: Row(
                children: <Widget>[Icon(Icons.my_location), Text('Location')],
              ),
            )

          ],
        )
      ],
    );
  }

  FlatButton _createFlatButton(icon) {
    return FlatButton(
      onPressed: () => null,
      child: Icon(icon),
    );
  }

  Stack _tabItems(icon, bool isFeed) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 1.0,
          left: 25.0,
          child: Container(
            alignment: Alignment.center,
            height: 25.0,
            width: 25.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: isFeed ? Colors.red : null),
            child: isFeed
                ? Text(
                    '10',
                    style: TextStyle(color: Colors.white),
                  )
                : null,
          ),
        ),
        _createFlatButton(icon)
      ],
    );
  }
}
