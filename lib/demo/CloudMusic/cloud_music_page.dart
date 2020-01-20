import 'package:flutter/material.dart';
import 'pages/my.dart';
import 'pages/discover.dart';
import 'pages/cloudVillage.dart';
import 'pages/video.dart';
import 'pages/drawerpage.dart';

class CloudMusicPage extends StatefulWidget {
  CloudMusicPage({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;
  @override
  _CloudMusicPageState createState() => _CloudMusicPageState();
}

class _CloudMusicPageState extends State<CloudMusicPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: '我的'),
    Tab(
      text: '发现',
    ),
    Tab(
      text: '云村',
    ),
    Tab(
      text: '视频',
    )
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
    ThemeData themeData = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            IconData(0xe60a,fontFamily:'iconfont'),
            color: Colors.black,
          ),
          title: TabBar(
            controller: _tabController,
            tabs: myTabs,
            labelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 16.0),
            unselectedLabelStyle: TextStyle(fontSize: 14.0),
            indicatorColor: Colors.white,
          ),
          actions: <Widget>[
            Icon(
              IconData(0xe623, fontFamily: 'iconfont'),
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            )
          ],
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        drawer: DrawerPage(),
        body: Theme(
            // data: Theme.of(context).copyWith(
            //   primaryColor: Color(0XFFD23023),
            // ),
            data: themeData.copyWith(
                primaryColor: Color(0XFFFE3A3B),
                
              ),
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    MyPage(), //我的
                    Discover(), //发现
                    CloudVillage(), //云村
                    VideoPage(), //视频
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: BottomMusicPlay(),
                )
              ],
            )));
  }
}

class BottomMusicPlay extends StatelessWidget {
  const BottomMusicPlay({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print("playdetail");
      },
      child: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
                  color: Colors.grey[200],
                  style: BorderStyle.solid,
                  width: 0.5))),
      height: 50,
      width: 410,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.network(
                    "http://p2.music.126.net/_5NqGU4KU06j7T0N-ahVLg==/1410673418999648.jpg?param=40y40",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '信仰（Live）',
                      style: TextStyle(),
                    ),
                    Text(
                      "张信哲",
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(IconData(0xe657,fontFamily:'iconfont')),
                  onPressed:(){
                    print("play");
                  },
                  iconSize: 33,
                  color: Color(0XFF666666),
                ),
                IconButton(
                  icon: Icon(IconData(0xe62a,fontFamily:'iconfont')),
                  onPressed:(){
                    print("list");
                  },
                  iconSize: 33,
                  color: Color(0XFF666666),
                )
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}
