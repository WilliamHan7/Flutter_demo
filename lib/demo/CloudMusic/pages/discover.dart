import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../widgets/small_widgets.dart';
import '../model/post.dart';

class Discover extends StatefulWidget {
  Discover({Key key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
      // padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
      child: Column(
        children: <Widget>[
          SwiperDiy(), //轮播图
          IconItem(),
          MyTitle(
            title: "推荐歌单",
            buttontext: "歌单广场",
          ), //金刚区 iconitem
          _musicItems(),
          MyTitle(
            title: "新歌",
            buttontext: "更多新碟",
          ),
          _newmusicItems(),
          SizedBox(height: 10,child: Container(color: Colors.red,),)
        ],
      ),
    ),
    );
  }
}

//轮播图
class SwiperDiy extends StatelessWidget {
  final List<Map> swiperList = [
    {
      "url":
          'http://p1.music.126.net/q_qd6ataGmbqYtbwBgbiPQ==/109951164581665448.jpg?imageView&quality=89'
    },
    {
      "url":
          "http://p1.music.126.net/21zpZ9S-pNWw9aP4K0qH4A==/109951164581853909.jpg?imageView&quality=89"
    },
    {
      "url":
          "http://p1.music.126.net/VwGUPxVbd-zYABCzTys1_A==/109951164581860385.jpg?imageView&quality=89"
    },
    {
      "url":
          "http://p1.music.126.net/zZox7T4HqdzoxGJP8leS4A==/109951164581866240.jpg?imageView&quality=89"
    },
    {
      "url":
          "http://p1.music.126.net/InF2NLVzcuDP8xzbHAYd9A==/109951164581677405.jpg?imageView&quality=89"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Swiper(
        itemCount: swiperList.length,
        itemBuilder: (BuildContext context, int index) {
          //return  Image.network(swiperList[index]['url'],fit: BoxFit.fill,);
          return Container(
            // 用Container实现图片圆角的效果
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(swiperList[index]['url'])),
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            //child:Image.network(swiperList[index]['url'],fit: BoxFit.fill,) ,
          );
        },
        scale: 0.9,
        viewportFraction: 0.93,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}

//图标列表。金刚区
class IconItem extends StatelessWidget {
  const IconItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: Colors.grey[300],
                  width: 0.5,
                  style: BorderStyle.solid))),
      padding: EdgeInsets.fromLTRB(5, 20, 5, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          MyIcon(
            title: '每日推荐',
            icons: AssetImage("images/cloudmusic/icon1.png"),
          ),
          MyIcon(
            title: '歌单',
            icons: AssetImage("images/cloudmusic/icon2.png"),
          ),
          MyIcon(
            title: '排行榜',
            icons: AssetImage("images/cloudmusic/icon3.png"),
          ),
          MyIcon(
            title: '电台',
            icons: AssetImage("images/cloudmusic/icon4.png"),
          ),
          MyIcon(
            title: '直播',
            icons: AssetImage("images/cloudmusic/icon5.png"),
          ),
        ],
      ),
    );
  }
}

Widget _musicItems() {
  if (muisclist.length > 0) {
    List<Widget> listWidget = muisclist.map((val) {
      return MusicItme(amount: val.amount,title: val.title,bgImagesUrl: val.bgImagesUrl,);
    }).toList();
    return Wrap(
      spacing: 1,
      children: listWidget,
    );
  } else {
    return Text(' 加载');
  }
}
Widget _newmusicItems() {
  if (newmuisclist.length > 0) {
    List<Widget> newlistWidget = newmuisclist.map((val) {
      return MusicItme(title: val.title, bgImagesUrl: val.bgImagesUrl,);
    }).toList();
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
      child: Wrap(
      spacing: 1,
      children: newlistWidget,
    ),
    );
  } else {
    return Text(' 加载');
  }
}






