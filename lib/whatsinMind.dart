import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsInMind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(children: <Widget>[
        Expanded(
            flex: 1,
            child: CircleAvatar(
                radius: 20.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fktm3-1.fna.fbcdn.net/v/t1.6435-1/cp0/p80x80/131094351_2822116351401625_8106084777890553861_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=7206a8&_nc_ohc=8PyCNMxkO1kAX9_P2tx&_nc_ht=scontent.fktm3-1.fna&tp=27&oh=798cc46486801f97e77b087f5bbbf27c&oe=60B25F10'))),
        Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: ("What's on your mind?"),
                    contentPadding: EdgeInsets.all(10.0),
                    border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    )),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                )))
      ]),
      Divider(
        color: Color(0xffd4d4d4),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(children: <Widget>[
              Icon(
                Icons.videocam,
                color: Color(0xfff93f3b),
              ),
              Text(
                'Live',
                style: TextStyle(
                    color: Color(0xff7b7b7b),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              )
            ]),
            Row(children: <Widget>[
              Icon(
                Icons.photo_library,
                color: Color(0xff86b44f),
              ),
              Text(
                'Photo',
                style: TextStyle(
                    color: Color(0xff7b7b7b),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              )
            ]),
            Row(children: <Widget>[
              Icon(
                Icons.video_call,
                color: Color(0xff8e5eef),
              ),
              Text(
                'Room',
                style: TextStyle(
                    color: Color(0xff7b7b7b),
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              )
            ])
          ],
        ),
      )
    ]);
  }
}
