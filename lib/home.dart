import 'package:fb_clone/createRoom.dart';
import 'package:fb_clone/fbStory.dart';
import 'package:fb_clone/whatsinMind.dart';
import 'package:flutter/cupertino.dart';

import 'fb_status.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children:<Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 2),
        child: WhatsInMind(),
      ),
      Container(height: 10,color:Color(0xffc9ccd2)),
      CreateRoom(),
      Container(height: 10,color:Color(0xffc9ccd2)),
      FbStory(),
      Padding(
        padding: const EdgeInsets.only(top:12.0,bottom: 12.0),
        child: Container(height: 10,color:Color(0xffc9ccd2)),
      ),
      FbStatus(showSingleImage: true),
      Container(height: 10,color:Color(0xffc9ccd2)),
      FbStatus(),
      Container(height: 10,color:Color(0xffc9ccd2)),
      FbStatus(showDoubleImage: true,),
      Container(height: 10,color:Color(0xffc9ccd2)),
      FbStatus(),
      Container(height: 10,color:Color(0xffc9ccd2)),
      FbStatus(showSingleImage: true,showDoubleImage: true,),
      Container(height: 10,color:Color(0xffc9ccd2)),

    ]
    );
  }
}
