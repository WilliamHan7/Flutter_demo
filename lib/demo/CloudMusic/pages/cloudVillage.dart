import 'package:flutter/material.dart';
import '../widgets/small_widgets.dart';
import '../model/post.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CloudVillage extends StatefulWidget {
  CloudVillage({Key key}) : super(key: key);

  @override
  _CloudVillageState createState() => _CloudVillageState();
}

class _CloudVillageState extends State<CloudVillage>
    with SingleTickerProviderStateMixin {
  TabController mController;
  final List<Tab> tabList = <Tab>[
    Tab(text: '广场'),
    Tab(text: '关注'),
  ];
  @override
  void initState() {
    super.initState();
    mController = TabController(
      length: tabList.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    mController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Color(0xfff1f1f1),
                        style: BorderStyle.solid,
                        width: 0.5))),
            child: TabBar(
                controller: mController,
                labelColor: Theme.of(context).primaryColor,
                indicatorColor: Theme.of(context).primaryColor,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Color(0xff666666),
                labelStyle: TextStyle(fontSize: 16.0),
                tabs: tabList),
          ),
          Expanded(
            child: TabBarView(
              controller: mController,
              children: <Widget>[
                PlazaView(),
                AttentionView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//广场
class PlazaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
        color: Colors.grey[100],
        child: StaggeredGridView.countBuilder(
          itemCount:plazalist.length,
          primary: false,
          crossAxisCount: 4,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          itemBuilder: (context, index) => TileCard(
                img: plazalist[index].img,
                title: plazalist[index].title,
                author: plazalist[index].author,
                authorUrl: plazalist[index].authorUrl,
                type: plazalist[index].type,
                worksAspectRatio: 2,
              ),
          staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        ),
      );
  }
}

//顶部cart
class HeaderCard extends StatelessWidget {
  const HeaderCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      decoration: BoxDecoration(
          color: Color(0xFF635f56),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000),
              blurRadius: 1.0,
            )
          ]),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('云村热评墙 >', style: TextStyle(color: Color(0xFFFFFFFF))),
              Text(
                'Jan.',
                style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('乐评故事新鲜上架，来瞅瞅~~',
                  style: TextStyle(color: Color(0xFFFFFFFF))),
              Text(
                '19',
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}


//关注
class AttentionView extends StatelessWidget {
  const AttentionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50),
      child: Column(
        children: <Widget>[
          AttentionTop(),
          Expanded(
            child: ListView.builder(
              itemCount: coludavatorlist.length,
              itemBuilder: (context, index) {
                return VillageCard(
                  cardAvatorName: coludavatorlist[index].cardAvatorName,
                  cardAvatorImg: coludavatorlist[index].cardAvatorImg,
                  cardAvatorNum: coludavatorlist[index].cardAvatorNum,
                  cardAvatorBrief: coludavatorlist[index].cardAvatorBrief,
                  cardImg: coludavatorlist[index].cardImg,
                  cardText: coludavatorlist[index].cardText,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

//关注话题
class AttentionTop extends StatelessWidget {
  const AttentionTop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 55,
          child: ListTile(
            title: Text("关注主题"),
            trailing: Icon(Icons.keyboard_arrow_right),
            leading: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Color(0xff977671),
                    borderRadius: BorderRadius.circular(23)),
                child: Center(
                  child: Text(
                    "#",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff)),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
        ),
        Divider(),
        Container(
          height: 60,
          padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("你可能感兴趣的人"),
              RaisedButton(
                child: Text(
                  "查看更多",
                ),
                color: Colors.white,
                textColor: Color(0xff666666),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Color(0xff666666),
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  print("查看更多");
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
