import 'package:flutter/material.dart';
import 'pages/hot_list.dart';//热榜
import 'pages/recommend.dart';//推荐
import 'pages/attention.dart';//关注

class ZhiHuPage extends StatefulWidget {
  ZhiHuPage({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;
  @override
  _ZhiHuPageState createState() => _ZhiHuPageState();
}

class _ZhiHuPageState extends State<ZhiHuPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab( text: '关注', ),
    Tab( text: '推荐', ),
    Tab( text: '热榜', ),
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
        leading: Icon(
          Icons.live_tv,
          color: Colors.black,
        ),
        actions: <Widget>[
          Icon(
            Icons.live_tv,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
        title: Container(
          height: 35,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: '',
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none),
            ),
          ),
        ),
        elevation: 2,
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorSize: TabBarIndicatorSize.label,
          ),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Attention(), //关注       
          Recommend(),//推荐
          HotList(),//热榜
        ],
      ),
    );
  }
}
