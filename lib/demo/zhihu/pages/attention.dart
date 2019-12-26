import 'package:flutter/material.dart';

class Attention extends StatelessWidget {
  const Attention({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderBox(),
          Container(
            height: 15.0,
            color: Colors.grey[200],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "你可能感兴趣的人",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.black),
            ),
          ),
          genContentList(),
        ],
      ),
    );
  }
}

class HeaderBox extends StatelessWidget {
  const HeaderBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pic1.zhimg.com/50/v2-f0d72f829dcd10ee13f6d3e7451b0cc9_s.jpg'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "想在知乎上认识志趣相投的朋友吗？",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.black),
          ),
          FlatButton(
            child: Text('开始吧'),
            color: Colors.blue,
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              print("开始吧");
            },
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class Content {
  String username;
  Content() {
    username = "贾思明";
  }
}

genContentList() {
  Content content = Content();
  List<Content> list = List<Content>();
  List.generate(10, (index) {
    list.add(content);
  });
  return Expanded(
    child: ListView.builder(
      itemCount: 10,
      itemBuilder: (content, index) {
        return Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: Colors.grey[300],
                      width: 0.5,
                      style: BorderStyle.solid))),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pic4.zhimg.com/98201321d1fbc6a66cbba521338fbc43_xs.jpg'),
            ),
            title: Text(
              list[index].username,
              style: TextStyle(
                  color: Colors.grey[850], fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('活跃回答者',
                    style: TextStyle(color: Colors.grey[700], fontSize: 14.0)),
                Text(
                  '4055 回答 · 1622 关注',
                  style: TextStyle(fontSize: 13.0),
                ),
              ],
            ),
            trailing: FlatButton.icon(
              icon: Icon(Icons.add),
              label: Text('关注'),
              color: Colors.grey[100],
              textColor: Colors.blue,
              onPressed: () {
                print("关注");
              },
            ),
          ),
        );
      },
    ),
  );
}
