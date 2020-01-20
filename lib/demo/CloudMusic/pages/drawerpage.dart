import 'dart:ffi';

import 'package:flutter/material.dart';
import '../widgets/small_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: AccountNmae(),
                accountEmail: Text(''),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://p1.music.126.net/_B6W38h1ziH5mP-S3_exRA==/109951163062707631.jpg?param=30y30'),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://p1.music.126.net/_B6W38h1ziH5mP-S3_exRA==/109951163062707631.jpg?param=30y30'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.grey[400].withOpacity(0.9), BlendMode.hardLight),
                  ),
                ),
              ),
              FourIcon(),
              Divider(),
              DrawerItem(),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: BottomDraw(),
          ),
          Positioned(
            top: 180,
            left: 20,
            child: MemberBlack(),
          )
        ],
      ),
    );
  }
}

class AccountNmae extends StatelessWidget {
  const AccountNmae({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'HanHan',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          RaisedButton.icon(
            icon: Icon(
              Icons.event_note,
              color: Colors.white,
            ),
            color: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {
              print('签到');
            },
            label: Text(
              '签到',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

//四个icon
class FourIcon extends StatelessWidget {
  const FourIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20, top: ScreenUtil().setHeight(100)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          MyIconFont(
            iconfont: IconData(0xe852, fontFamily: 'iconfont'),
            title: '我的消息',
          ),
          MyIconFont(
            iconfont: IconData(0xe606, fontFamily: 'iconfont'),
            title: '我的好友',
          ),
          MyIconFont(
            iconfont: IconData(0xe64f, fontFamily: 'iconfont'),
            title: '听歌识曲',
          ),
          MyIconFont(
            iconfont: IconData(0xe672, fontFamily: 'iconfont'),
            title: '个性装扮',
          ),
        ],
      ),
    );
  }
}

//drawer列表
class DrawerItem extends StatelessWidget {
  const DrawerItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            MyDrawerList(
              leftIcon: IconData(0xe659, fontFamily: 'iconfont'),
              text: "演出",
              onTap: () {
                print('演出');
              },
            ),
            MyDrawerList(
              leftIcon: IconData(0xe603, fontFamily: 'iconfont'),
              text: "商城",
              onTap: () {
                print('商城');
              },
            ),
            MyDrawerList(
              leftIcon: IconData(0xe612, fontFamily: 'iconfont'),
              text: "附近的人",
              onTap: () {
                print('附近的人');
              },
            ),
            MyDrawerList(
              leftIcon: IconData(0xe6d3, fontFamily: 'iconfont'),
              text: "游戏推荐",
              onTap: () {
                print('游戏推荐');
              },
            ),
            MyDrawerList(
              leftIcon: IconData(0xe699, fontFamily: 'iconfont'),
              text: "口袋彩铃",
              onTap: () {
                print('口袋彩铃');
              },
            ),
            MyDrawerList(
              leftIcon: IconData(0xe602, fontFamily: 'iconfont'),
              text: "我的订单",
              onTap: () {
                print('我的订单');
              },
            ),
            MyDrawerList(
              leftIcon: IconData(0xe611, fontFamily: 'iconfont'),
              text: "定时停止播放",
              onTap: () {
                print('定时停止播放');
              },
            ),
            MyDrawerList(
              leftIcon: IconData(0xe600, fontFamily: 'iconfont'),
              text: "扫一扫",
              onTap: () {
                print('扫一扫');
              },
            ),
            MyDrawerList(
              leftIcon: IconData(0xe613, fontFamily: 'iconfont'),
              text: "音乐闹钟",
              onTap: () {
                print('音乐闹钟');
              },
            ),
          ],
        ),
      ],
    ));
  }
}

//底部
class BottomDraw extends StatelessWidget {
  const BottomDraw({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: ScreenUtil().setWidth(560),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
                  color: Colors.grey[100],
                  width: 0.5,
                  style: BorderStyle.solid))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          RaisedButton.icon(
            onPressed: () {
              print("夜间模式");
            },
            color: Colors.white,
            icon: Icon(
              IconData(0xe607, fontFamily: 'iconfont'),
              size: 20,
            ),
            label: Text("夜间模式"),
            elevation: 0,
          ),
          RaisedButton.icon(
            onPressed: () {
              print("设置");
            },
            color: Colors.white,
            icon: Icon(
              IconData(0xe618, fontFamily: 'iconfont'),
              size: 20,
            ),
            label: Text("设置"),
            elevation: 0,
          ),
          RaisedButton.icon(
            onPressed: () {
              print("退出");
            },
            color: Colors.white,
            icon: Icon(
              IconData(0xe604, fontFamily: 'iconfont'),
              size: 20,
            ),
            label: Text("退出"),
            elevation: 0,
          ),
        ],
      ),
    );
  }
}

class MemberBlack extends StatelessWidget {
  const MemberBlack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 3,
        left: 10,
        right: 10,
      ),
      height: ScreenUtil().setHeight(100),
      width: ScreenUtil().setWidth(480),
      decoration: BoxDecoration(
          color: Color(0xFF212121),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000),
              blurRadius: 1.0,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('开通黑胶VIP',
                    style: TextStyle(
                        color: Color(0XFFD4BCB8),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Text(
                  "已过期",
                  style: TextStyle(color: Color(0XFFcccccc)),
                )
              ],
            ),
          ),
          Text(
            "享超12项豪华特权",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
