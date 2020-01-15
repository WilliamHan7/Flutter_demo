import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//图标
class MyIcon extends StatelessWidget {
  const MyIcon({
    Key key,
    this.title,
    this.icons,
  }) : super(key: key);
  final String title;
  final AssetImage icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image(
            image: icons,
            width: 45.0,
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}

//title
class MyTitle extends StatelessWidget {
  const MyTitle({
    Key key,
    @required this.title,
    @required this.buttontext,
  }) : super(key: key);
  final String title;
  final String buttontext;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Container(
      padding: EdgeInsets.fromLTRB(15, 20, 15, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Container(
            height: ScreenUtil().setHeight(50.0),
            width: ScreenUtil().setWidth(165.0),
            child: OutlineButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(buttontext),
              onPressed: () {
                print('点击了更多');
              },
            ),
          )
        ],
      ),
    );
  }
}

//歌单

class MusicItme extends StatelessWidget {
  const MusicItme({
    Key key,
    this.bgImagesUrl,
    this.amount,
    this.title,
  }) : super(key: key);
  final String bgImagesUrl;
  final int amount;
  final String title;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return InkWell(
      onTap: () {
        print("ww");
      },
      child: Container(
        width: ScreenUtil().setWidth(245),
        height: ScreenUtil().setHeight(320),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(245),
              height: ScreenUtil().setHeight(245),
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(bgImagesUrl)),
                  borderRadius: BorderRadius.circular(18)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: 10,
                    top: 0,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 12,
                        ),
                        Text(
                          "${amount}万",
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}

//列表

class MyList extends StatelessWidget {
  const MyList({
    Key key,
    this.text,
    this.leftIcon,
    this.onTap,
  }) : super(key: key);
  final String text;
  final IconData leftIcon;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(80),
              child: Icon(leftIcon),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey[300],
                            width: 0.5,
                            style: BorderStyle.solid))),
                child: Text(
                  text,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//歌单列表

class MusicList extends StatelessWidget {
  const MusicList({Key key, this.title, this.subtitle, this.imagesUrl})
      : super(key: key);
  final String title;
  final String subtitle;
  final String imagesUrl;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Container(
      child: ListTile(
          leading: Container(
            width: ScreenUtil().setWidth(110),
            height: ScreenUtil().setHeight(110),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(imagesUrl)),
              borderRadius: BorderRadius.circular(10)
            ),
            
          ),
          title: Text(title),
          subtitle: Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(subtitle),
          ),
          trailing: IconButton(
            onPressed: () {
              print("s");
            },
            icon: Icon(Icons.more_vert),
          )),
    );
  }
}
