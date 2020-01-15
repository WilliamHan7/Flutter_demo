import 'package:flutter/material.dart';
import '../widgets/small_widgets.dart';
import '../widgets/Expan.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        TopListview(),
        Listview(),
        SizedBox(
          height: 12,
          child: Container(
            color: Colors.grey[200],
          ),
        ),
        MusicList(
          imagesUrl:
              "http://p3.music.126.net/TzlSVBiNtpRD2b7MT2Hi-w==/109951164527590793.jpg",
          title: "我喜欢的音乐",
          subtitle: "20首",
        ),
        MusicList(
          imagesUrl:
              "http://p3.music.126.net/TzlSVBiNtpRD2b7MT2Hi-w==/109951164527590793.jpg",
          title: "我喜欢的音乐",
          subtitle: "20首",
        ),
        MusicList(
          imagesUrl:
              "http://p3.music.126.net/TzlSVBiNtpRD2b7MT2Hi-w==/109951164527590793.jpg",
          title: "我喜欢的音乐",
          subtitle: "20首",
        ),
      ],
    ));
  }
}

//顶部图标
class TopListview extends StatelessWidget {
  const TopListview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: Colors.grey[300],
                    width: 0.5,
                    style: BorderStyle.solid))),
        margin: EdgeInsets.all(5),
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          Container(
            width: 73.0,
            child: MyIcon(
              title: '私人FM',
              icons: AssetImage("images/cloudmusic/icon3.png"),
            ),
          ),
          Container(
            width: 73.0,
            child: MyIcon(
              title: '最嗨电音',
              icons: AssetImage("images/cloudmusic/icon3.png"),
            ),
          ),
          Container(
            width: 73.0,
            child: MyIcon(
              title: 'ACG专区',
              icons: AssetImage("images/cloudmusic/icon3.png"),
            ),
          ),
          Container(
            width: 73.0,
            child: MyIcon(
              title: '猜歌挑战',
              icons: AssetImage("images/cloudmusic/icon3.png"),
            ),
          ),
          Container(
            width: 73.0,
            child: MyIcon(
              title: 'Sati空间',
              icons: AssetImage("images/cloudmusic/icon3.png"),
            ),
          ),
          Container(
            width: 73.0,
            child: MyIcon(
              title: '私人收藏',
              icons: AssetImage("images/cloudmusic/icon3.png"),
            ),
          ),
        ]));
  }
}

class Listview extends StatelessWidget {
  const Listview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          MyList(
            leftIcon: Icons.queue_music,
            text: "本地音乐",
            onTap: () {
              print('我的音乐');
            },
          ),
          MyList(
            leftIcon: Icons.play_circle_outline,
            text: "最近播放",
            onTap: () {
              print('最近播放');
            },
          ),
          MyList(
            leftIcon: Icons.arrow_downward,
            text: "下载管理",
            onTap: () {
              print('下载管理');
            },
          ),
          MyList(
            leftIcon: Icons.live_tv,
            text: "我的电台",
            onTap: () {
              print('我的电台');
            },
          ),
          MyList(
            leftIcon: Icons.sentiment_satisfied,
            text: "我的收藏",
            onTap: () {
              print('我的收藏');
            },
          )
        ],
      ),
    );
  }
}
