import 'package:flutter/material.dart';

class Recommend extends StatelessWidget {
  const Recommend({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: genContentList(),
    );
  }
}

class Content {
  String title;
  String subTitle;
  String avatrUrl;
  String userName;
  String userDesc;
  Content() {
    title = "你有没有什么忠告想告诉 20 岁的年轻人？";
    subTitle =
        "1、二十岁的你，性欲很强，可能每天都会忍不住去想很多关于性的事情，可能会保存很多小电影，甚至记住很多黄色网站的域名。但是你一定要克制住自己，…";
    avatrUrl =
        "https://pic4.zhimg.com/v2-09b359d3e155c98ad6005c86c73c39bf_xl.jpg";
    userName = "贝雷贝雷贝雷";
    userDesc = "关注我有惊喜";
  }
}

genContentList() {
  Content content = Content();
  List<Content> list = List<Content>();
  List.generate(10, (index) {
    list.add(content);
  });

  return ListView.builder(
    itemCount: list.length,
    itemBuilder: (BuildContext content, int index) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
                color: Colors.grey, width: 0.1, style: BorderStyle.solid),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.white,
                offset: Offset.zero,
                blurRadius: 0.1,
                spreadRadius: 0.1),
          ],
        ),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              list[index].title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 25,
                  height: 25,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(list[index].avatrUrl),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(list[index].userName),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  list[index].userDesc,
                  style: TextStyle(color: Colors.grey[500], fontSize: 12.0),
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              list[index].subTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '4055 赞同 · 1622 评论',
                  style: TextStyle(fontSize: 14.0),
                ),
                PopupMenuButton(
                  child: Icon(Icons.more_horiz,color: Colors.grey,),
                  padding: EdgeInsets.all(0.0),
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuItem<String>>[
                      PopupMenuItem<String>(
                        child: Text("屏蔽这个问题",style: TextStyle(fontSize: 16),),
                        value: "1",
                        height: 30,
                      ),
                      PopupMenuItem<String>(
                        child: Text("设置屏蔽关键字",style: TextStyle(fontSize: 16),),
                        value: "2",
                        height: 30,
                      ),
                      PopupMenuItem<String>(
                        child: Text("举报",style: TextStyle(fontSize: 16),),
                        value: "3",
                        height: 30,
                      ),
                    ];
                  },
                  onSelected: (String action) {
                    switch (action) {
                      case "1":
                        print("屏蔽这个问题");
                        break;
                      case "2":
                        print("设置屏蔽关键字");
                        break;
                      case "3":
                        print("举报");
                    }
                  },
                  onCanceled: () {
                    print("onCanceled");
                  },
                )
              ],
            )
          ],
        ),
      );
    },
  );
}
