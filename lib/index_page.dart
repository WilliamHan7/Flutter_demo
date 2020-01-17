import 'package:flutter/material.dart';
import 'demo/zhihu/zhihu_page.dart';
import 'demo/CloudMusic/cloud_music_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({
    Key key,
    this.title,
    }) : super(key: key);
    final String title;
  @override
  Widget build(BuildContext context) {
     ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(fontSize: 18, color: Theme.of(context).accentColor),),
        elevation: 0.5,
        backgroundColor:Colors.white,
      ),
      body: Container(
        child: GenListView(),
      ),
    );
  }
}

class GenListView extends StatelessWidget {
  const GenListView({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          FlatButton(
            color: Colors.yellow,
            textColor: Colors.white,
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>ZhiHuPage(title:'知乎'))
              );
            },
            child: Text('知乎'),
          ),
          FlatButton(
            color: Colors.yellow,
            textColor: Colors.white,
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>CloudMusicPage(title:'网易云音乐'))
              );
            },
            child: Text('网易云'),
          )
        ],
      ),
    );
  }
}