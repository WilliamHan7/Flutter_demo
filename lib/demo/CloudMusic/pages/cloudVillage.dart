import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/small_widgets.dart';

class CloudVillage extends StatefulWidget {
  CloudVillage({Key key}) : super(key: key);

  @override
  _CloudVillageState createState() => _CloudVillageState();
}

class _CloudVillageState extends State<CloudVillage>
    with SingleTickerProviderStateMixin {
  TabController mController;
  final List<Tab> tabList = <Tab>[
    Tab(text: '广场'),
    Tab(text: '关注'),
  ];
  @override
  void initState() {
    super.initState();
    mController = TabController(
      length: tabList.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    mController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: new Color(0xffffffff),
            height: 38.0,
            child: TabBar(
                controller: mController,
                labelColor: Colors.red,
                indicatorColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Color(0xff666666),
                labelStyle: TextStyle(fontSize: 16.0),
                tabs: tabList),
          ),
          Divider(),
          Expanded(
            child: TabBarView(
              controller: mController,
              children: <Widget>[
                Text('广场'),
                AttentionView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//关注
class AttentionView extends StatelessWidget {
  const AttentionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[AttentionTop(),VillageCard()],
    );
  }
}

//关注话题
class AttentionTop extends StatelessWidget {
  const AttentionTop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 55,
         
          child: ListTile(
            title: Text("关注主题"),
            trailing: Icon(Icons.keyboard_arrow_right),
            leading: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Color(0xff977671),
                    borderRadius: BorderRadius.circular(23)),
                child: Center(
                  child: Text(
                    "#",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
        ),
        Divider(),
        Container(
          height:60,
          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("你可能感兴趣的人"),
              RaisedButton(
                child: Text(
                  "查看更多",
                ),
                color: Colors.white,
                textColor: Color(0xff666666),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color(0xff666666),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  print("查看更多");
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
