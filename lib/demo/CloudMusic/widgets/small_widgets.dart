import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
            height: 22,
            width: 70,
            child: OutlineButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(buttontext,style: TextStyle(fontSize: 12),),
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
        margin: EdgeInsets.fromLTRB(4, 4, 4, 4),
        width: ScreenUtil().setWidth(230),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: ScreenUtil().setWidth(230),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: bgImagesUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
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
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              child: CachedNetworkImage(
                imageUrl: imagesUrl,
                fit: BoxFit.cover,
              ),
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

//云村关注卡片
class VillageCard extends StatelessWidget {
  const VillageCard({
    Key key,
    this.cardAvatorImg,
    this.cardAvatorName,
    this.cardAvatorNum,
    this.cardText,
    this.cardImg,
    this.cardAvatorBrief,
  }) : super(key: key);
  final String cardAvatorImg;
  final String cardAvatorName;
  final String cardAvatorNum;
  final String cardText;
  final String cardImg;
  final String cardAvatorBrief;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
      height: 190.0,
      child: Card(
        color: Color(0xfff3f3f3),
        elevation: 0, //设置阴影
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))), //设置圆角
        child: Column(
          // card只能有一个widget，但这个widget内容可以包含其他的widget
          children: [
            Container(
              height: 65.0,
              child: ListTile(
                  title: Text(cardAvatorName,
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: Text(cardAvatorNum),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: cardAvatorImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                  trailing: Container(
                    height: 30,
                    width: 80,
                    child: RaisedButton.icon(
                      onPressed: () {
                        print('关注');
                      },
                      elevation: 0,
                      textColor: Color(0xffffffff),
                      label: Text('关注'),
                      icon: Icon(
                        Icons.add,
                        color: Color(0xffffffff),
                        size: 16,
                      ),
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      cardText,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                    flex: 1,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: CachedNetworkImage(
                      imageUrl: cardImg,
                      fit: BoxFit.cover,
                      width: 70,
                      height: 70,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    cardAvatorBrief,
                    style: TextStyle(fontSize: 12, color: Color(0xff666666)),
                  ),
                  Icon(
                    Icons.close,
                    size: 18,
                    color: Color(0xff666666),
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

//雲村瀑布流
class TileCard extends StatelessWidget {
  final String img;
  final String title;
  final String author;
  final String authorUrl;
  final String type;
  final double worksAspectRatio;
  TileCard(
      {this.img,
      this.title,
      this.author,
      this.authorUrl,
      this.type,
      this.worksAspectRatio});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
            child: CachedNetworkImage(imageUrl: '$img'),
          ),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
            margin: EdgeInsets.symmetric(vertical: ScreenUtil().setWidth(10)),
            child: Text(
              '$title',
              style: TextStyle(fontSize: ScreenUtil().setSp(24)),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(20),
                bottom: ScreenUtil().setWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage('$authorUrl'),
                  radius: ScreenUtil().setWidth(20),
                  // maxRadius: 40.0,
                ),
                Container(
                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                  width: ScreenUtil().setWidth(160),
                  child: Text(
                    '$author',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(20),
                        color: Color(0xff999999)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                  child: Text(
                    '${type == 'EXISE' ? '练习' : '其他'}',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(20),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
