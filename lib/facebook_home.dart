import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class FacebookHome extends StatefulWidget {
  @override
  _FacebookHomeState createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _selectedIndex = 0;
  List<Widget> list = [
    Tab(icon: Icon(Icons.home)),
    Tab(icon: Icon(Icons.group)),
    Tab(icon: Icon(Icons.ondemand_video)),
    Tab(icon: Icon(Icons.notifications)),
    Tab(icon: Icon(Icons.dehaze)),
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'facebook',
          style:
              TextStyle(color: Color(0xff1a76ef), fontWeight: FontWeight.bold,fontSize: 24),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search)),
          IconButton(icon: Icon(Icons.message))
        ],
        bottom: TabBar(
            onTap: (index) {},
            unselectedLabelColor: Color(0xff8a8b8d),
            indicatorColor: Color(0xff1a76ef),
            labelColor: Color(0xff1a76ef),
            controller: _controller,
            tabs: list),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Home(),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
          Center(
              child: Text(
            _selectedIndex.toString(),
            style: TextStyle(fontSize: 40),
          )),
        ],
      ),
    );
  }
}
