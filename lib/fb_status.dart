import 'package:flutter/material.dart';

class FbStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network(
              'https://scontent.fktm3-1.fna.fbcdn.net/v/t1.6435-1/p240x240/131094351_2822116351401625_8106084777890553861_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=7206a8&_nc_ohc=jY2f6GfRe1sAX-7dpKU&_nc_ht=scontent.fktm3-1.fna&tp=6&oh=af01b777e582d34162239d8be861eae9&oe=60AFDB0C',
              //height: 80,
              //width:100,
              //alignment: Alignment.topCenter,
              //fit: BoxFit.fill,
            ),
          ),
          title: RichText(
            text: TextSpan(
              text: 'Bijay Khanal ',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
              children: <TextSpan>[
                TextSpan(text: 'is with',style: TextStyle(fontWeight: FontWeight.normal) ),
                TextSpan(text: ' Baibhav Basnet'),
              ],
            ),
          ),
          subtitle: Row(
            children: [
              Text('30m'),
              Icon(Icons.people,color: Colors.grey.shade900,)
            ],
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8,left:14),
          child: Text("This is facebook clone using flutter",style: TextStyle(fontSize:16 ),textAlign: TextAlign.left,),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.only(top:8.0,bottom:8.0 ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.thumb_up),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Like'),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.comment),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Comment'),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('Share'),
                  )
                ],
              ),

            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
