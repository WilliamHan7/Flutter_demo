import 'package:flutter/material.dart';
import 'pages/my.dart';
import 'pages/discover.dart';
import 'pages/cloudVillage.dart';
import 'pages/video.dart';

class CloudMusicPage extends StatefulWidget {
  CloudMusicPage({
    Key key,
    this.title,
    }) : super(key: key);
    final String title;
  @override
  _CloudMusicPageState createState() => _CloudMusicPageState();
}

class _CloudMusicPageState extends State<CloudMusicPage> with SingleTickerProviderStateMixin{

  final List<Tab>  myTabs = <Tab>[
    Tab(text:'我的'),
    Tab(text: '发现',),
    Tab(text: '云村',),
    Tab(text: '视频',)
  ];
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.reorder,color: Colors.black,),
        title: TabBar(
          controller: _tabController,
          tabs: myTabs,
          labelColor: Colors.black,
          labelStyle:TextStyle(fontSize: 16.0),
          unselectedLabelStyle: TextStyle(fontSize: 14.0),
          indicatorColor:Colors.white,
        ),
        actions: <Widget>[
          Icon(Icons.search,color: Colors.black,),
          SizedBox(width: 10.0,)
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body:Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.red,
        ), 
        child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          MyPage(),//我的
          Discover(),//发现
          CloudVillage(),//云村
          VideoPage(),//视频
         
        ],
      ),
    )
    );
  }
}