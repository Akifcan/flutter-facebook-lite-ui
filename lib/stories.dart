import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  TextStyle addStoryStyle = new TextStyle(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          createStory('create', 'https://images.unsplash.com/photo-1555760113-2ff3079217cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=640&q=80'),
          createStory('story', 'https://images.unsplash.com/photo-1563125236-0384b6975276?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80'),
          createStory('story', 'https://images.unsplash.com/photo-1554931642-d39591fd064c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
          createStory('story', 'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
        ],
      ),
    );
  }


  Stack createStory(var type, image) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 1.0, left: 2.0),
          width: 110,
          height: 150,
          child: Image.network(
              image, fit: BoxFit.cover,),
        ),
        Positioned(
          top: 5.0,
          left: type == 'create' ? 75.0 : 90.0,
          child: Container(
            decoration: BoxDecoration(
                  borderRadius: type == 'create' ? BorderRadius.circular(30) : null, 
                    color: type == 'create' ? Colors.white: Colors.blue) ,
            child: type == 'create' ? Icon(Icons.add, color: Colors.black) : Text("2", style: TextStyle(color: Colors.white),),
          ),
        ),
        Positioned(
          left: 10.0,
          top: 100.0,
          child: Text('Ekle:', style: addStoryStyle),
        ),
        Positioned(
          left: 10.0,
          top: 120.0,
          child: Text('Hikaye', style: addStoryStyle),
        ),
      ],
    );
  }
}
