import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FbStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> story = new List();
    for (int i = 0; i <= 20; i++) {
      story.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                'https://scontent.fktm8-1.fna.fbcdn.net/v/t1.6435-0/s552x414/179758970_1187552765020546_1341010556954721248_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=365331&_nc_ohc=sXNzNzTzeS0AX9Hfpre&_nc_ht=scontent.fktm8-1.fna&tp=7&oh=c5c48f5e5b987a83e56e6553e211f429&oe=60B0CA38',
                width: MediaQuery.of(context).size.width / 4,
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Color(0xff1a76ef),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://scontent.fktm3-1.fna.fbcdn.net/v/t1.6435-1/cp0/p80x80/131094351_2822116351401625_8106084777890553861_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=7206a8&_nc_ohc=8PyCNMxkO1kAX9_P2tx&_nc_ht=scontent.fktm3-1.fna&tp=27&oh=798cc46486801f97e77b087f5bbbf27c&oe=60B25F10'),
                  )),
            ),
            Positioned(
                bottom: 10,
                left: 2,
                child: Text(
                  'Bijay Khanal',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ));
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: 200,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: Stack(children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) ),
                    child: Image.network(
                      'https://scontent.fktm3-1.fna.fbcdn.net/v/t1.6435-1/p240x240/131094351_2822116351401625_8106084777890553861_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=7206a8&_nc_ohc=jY2f6GfRe1sAX-7dpKU&_nc_ht=scontent.fktm3-1.fna&tp=6&oh=af01b777e582d34162239d8be861eae9&oe=60AFDB0C',
                      //height: 80,
                      //width:100,
                      //alignment: Alignment.topCenter,
                      //fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 30,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                          color: Color(0xff1a76ef)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 14,
                    child: Text(
                      'Create Story',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  )
                ]),
              ),
            ),
            ...story,
          ],
        ),
      ),
    );
  }
}
