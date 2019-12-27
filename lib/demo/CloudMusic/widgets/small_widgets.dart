import 'package:flutter/material.dart';
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
            width:55.0,
          ),
          SizedBox(height: 5),
          Text(title,style: TextStyle(fontSize: 14),)
        ],
      ),
    );
  }
}

//title
class MyTitle extends StatelessWidget {
  const MyTitle({
    Key key,
    this.title,
    this.buttontext,
    }) : super(key: key);
    final String title;
    final String buttontext;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title),
          Container(
            height: 25.0,
            child: FlatButton(
              shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Text(buttontext),
              onPressed: (){
                print('点击了更多');
              },
            ),
          )
        ],
      ),
    );
  }
}