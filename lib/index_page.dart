import 'package:flutter/material.dart';
import 'demo/zhihu/zhihu_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({
    Key key,
    this.title,
    }) : super(key: key);
    final String title;
  @override
  Widget build(BuildContext context) {
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
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) =>ZhiHuPage(title:'知乎'))
              );
            },
            child: Text('知乎'),
          )
        ],
      ),
    );
  }
}