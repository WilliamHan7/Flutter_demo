import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RightIcon extends StatelessWidget {
  const RightIcon({Key key, this.name, this.imgs}) : super(key: key);
  final String name;
  final NetworkImage imgs;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
          Image(
            image: imgs,
            width: 45.0,
          ),
        ],
      ),
    );
  }
}

class MyIconFont extends StatelessWidget {
  const MyIconFont({
    Key key,
    this.title,
    this.iconfont,
  }) : super(key: key);
  final String title;
  final IconData iconfont;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            iconfont,
            color: Colors.red,
            size: 28,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          )
        ],
      ),
    );
  }
}

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

class MyDrawerList extends StatelessWidget {
  const MyDrawerList({
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
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(80),
              child: Icon(
                leftIcon,
                color: Color(0Xff666666),
                size: 20,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text(
                  text,
                  style: TextStyle(color: Color(0Xff666666)),
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
    return Container(
      child: ListTile(
          leading: Container(
            width: ScreenUtil().setWidth(110),
            height: ScreenUtil().setHeight(110),
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(imagesUrl)),
                borderRadius: BorderRadius.circular(10)),
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

//云村关注卡片
class VillageCard extends StatelessWidget {
  const VillageCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      height: ScreenUtil().setHeight(400),
      child: Card(
        color: Color(0xfff3f3f3),
        elevation: 0, //设置阴影
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))), //设置圆角
        child: Column(
          // card只能有一个widget，但这个widget内容可以包含其他的widget
          children: [
            ListTile(
              title: Text('标题', style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('子标题'),
              leading: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
                child: Image.network(
                  "https://upload.jianshu.io/users/upload_avatars/1234161/bd064d4aa493.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/96/h/96/format/webp",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('内容一', style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
