import 'package:flutter/material.dart';
import '../widgets/small_widgets.dart';

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
        ExpansionTile(
          //添加一个展开闭合的组件
          title: Text('创建的歌单'), //闭合时的标题
          backgroundColor: Colors.white24, //闭合时的颜色
          children: <Widget>[
            //展开时子部件
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
            SizedBox(height: 60,)
          ],
          initiallyExpanded: true, //初始状态为闭合状态(默认状态)
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
        child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                width: 73.0,
                child: MyIcon(
                  title: '私人FM',
                  icons: AssetImage("images/cloudmusic/icons1.png"),
                ),
              ),
              Container(
                width: 73.0,
                child: MyIcon(
                  title: '最嗨电音',
                  icons: AssetImage("images/cloudmusic/icons2.png"),
                ),
              ),
              Container(
                width: 73.0,
                child: MyIcon(
                  title: 'ACG专区',
                  icons: AssetImage("images/cloudmusic/icons3.png"),
                ),
              ),
              Container(
                width: 73.0,
                child: MyIcon(
                  title: '猜歌挑战',
                  icons: AssetImage("images/cloudmusic/icons4.png"),
                ),
              ),
              Container(
                width: 73.0,
                child: MyIcon(
                  title: 'Sati空间',
                  icons: AssetImage("images/cloudmusic/icons5.png"),
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
            leftIcon: IconData(0xe60f,fontFamily:'iconfont'),
            text: "本地音乐",
            onTap: () {
              print('我的音乐');
            },
          ),
          MyList(
            leftIcon:IconData(0xe605,fontFamily:'iconfont'),
            text: "最近播放",
            onTap: () {
              print('最近播放');
            },
          ),
          MyList(
            leftIcon:IconData(0xe601,fontFamily:'iconfont'),
            text: "下载管理",
            onTap: () {
              print('下载管理');
            },
          ),
          MyList(
            leftIcon: IconData(0xe6f4,fontFamily:'iconfont'),
            text: "我的电台",
            onTap: () {
              print('我的电台');
            },
          ),
          MyList(
            leftIcon:IconData(0xe639,fontFamily:'iconfont'),
            text: "我的收藏",
            onTap: () {
              print('我的收藏');
            },
          ),
        ],
      ),
    );
  }
}
