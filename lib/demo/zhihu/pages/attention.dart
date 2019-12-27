import 'package:flutter/material.dart';

class Attention extends StatelessWidget {
  const Attention({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          HeaderBox(),
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
            height: 10.0,
          ),
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
  Widget _avtorimg(String imgurl) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 4.0),
          borderRadius: BorderRadius.circular(40)),
      child: CircleAvatar(
        backgroundImage: NetworkImage(imgurl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10, top: 10),
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Positioned(
              left: 140.0,
              top: 20.0,
              child: _avtorimg(
                  "https://pic4.zhimg.com/50/v2-b4427f995cb107caef32cbfc31ffa9ed_xs.jpg")),
          Positioned(
              left: 170.0,
              top: 20.0,
              child: _avtorimg(
                  "https://pic1.zhimg.com/50/v2-e08d698f3b5478ff33be5943ab220c4f_xs.jpg")),
          Positioned(
              left: 200.0,
              top: 20.0,
              child: _avtorimg(
                  "https://pic2.zhimg.com/50/v2-546dbc09dc051009af3cf341f53368bc_xs.jpg")),
          Positioned(
              left: 230.0,
              top: 20.0,
              child: _avtorimg(
                  "https://pic1.zhimg.com/50/v2-47a4f7a0f78f4e2b4abfc456d6090346_xs.jpg")),
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
