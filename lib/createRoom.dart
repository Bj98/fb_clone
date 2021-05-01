import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _rooms = new List();
    for (int i = 0; i <= 20; i++) {
      _rooms.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children:<Widget>[ CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage(
                  'https://scontent.fktm3-1.fna.fbcdn.net/v/t1.6435-1/cp0/p80x80/131094351_2822116351401625_8106084777890553861_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=7206a8&_nc_ohc=8PyCNMxkO1kAX9_P2tx&_nc_ht=scontent.fktm3-1.fna&tp=27&oh=798cc46486801f97e77b087f5bbbf27c&oe=60B25F10')),
        Positioned(top: 50,
          bottom:0,
          left: 50,
          right: 0
          ,child: Container(
            decoration: new BoxDecoration(
              shape: BoxShape.circle,color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Icon(Icons.brightness_1,color: Colors.green,),
            ),
          ),)
          ]),
      ));
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 60,
              child: OutlineButton.icon(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {},
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.orange,
                  ),
                  label: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create',
                        style: TextStyle(color: Color(0xff1a76ef)),
                      ),
                      Text(
                        'Room',
                        style: TextStyle(color: Color(0xff1a76ef)),
                      ),
                    ],
                  )),
            ),
            ..._rooms,
          ],
        ),
      ),
    );
  }
}
