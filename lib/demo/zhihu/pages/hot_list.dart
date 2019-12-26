import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/post.dart';

class HotList extends StatelessWidget {
  const HotList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: hotLists.length,
        itemBuilder:(context, index){
          return Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, width: 0.3, style: BorderStyle.solid
                )
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${hotLists[index].id}', style: TextStyle(height: 1.5, fontWeight: FontWeight.w700,color: Colors.orange[200],fontSize: 18.0),),
                SizedBox(width: 10,),
                Container(
                  width: 220,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('${hotLists[index].title}',style: TextStyle(fontSize: 14.0,fontWeight:FontWeight.w700,color: Colors.black ),),
                      Text('${hotLists[index].heatnum}万热度',style: TextStyle(height: 1.7,fontSize: 13,color: Colors.grey),)
                    ],
                  ),
                ),
                Container(
                  width: 130,
                  height: 90,
                  decoration: BoxDecoration(
                    
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(hotLists[index].imageUrl,fit: BoxFit.cover,),
                  )
                )
              ],
            ),
          );
        } ,
      ),
    );
  }
}