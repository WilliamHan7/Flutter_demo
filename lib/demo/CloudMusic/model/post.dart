class MusicList{
  const MusicList({
    this.id,
    this.title,
    this.bgImagesUrl,
    this.amount,
  });
  final int id;
  final String title;
  final String bgImagesUrl;
  final int amount;
}
final List<MusicList> muisclist=[
  MusicList(
    id:1,
    title: "少年去闯荡，你还年轻怕什么受伤",
    bgImagesUrl: "http://p2.music.126.net/5nsZ3SG_8awCEV0jf07YmA==/109951164465913093.jpg",
    amount: 1523
  ),
  MusicList(
    id:2,
    title: "冬日暖歌｜慵懒轻快旋律，陪你过冬季",
    bgImagesUrl: "http://p2.music.126.net/21kRupyH0FTLfWs7H_0jgw==/109951164575657763.jpg",
    amount: 1152
  ),
  MusicList(
    id:3,
    title: "驾车/经典驾车曲目",
    bgImagesUrl: "http://p2.music.126.net/yuwgtBNMYd5TvxusftJFyg==/109951164568507042.jpg",
    amount: 1523
  ),
  MusicList(
    id:4,
    title: "你绝对熟悉的电音 自嗨蹦迪",
    bgImagesUrl: "http://p2.music.126.net/jyEBx1l6iukbWTB9TKvCFg==/109951164412824316.jpg",
    amount: 1523
  ),
  MusicList(
    id:5,
    title: "运动打球必备/节奏控",
    bgImagesUrl: "http://p1.music.126.net/h8eNLOVW_QYDvrZocr8Vmg==/109951164319458603.jpg",
    amount: 1523
  ),
  MusicList(
    id:6,
    title: "小众佳曲迷醉气息蝶自来 | 欧美篇",
    bgImagesUrl: "http://p2.music.126.net/MJA6MRIFlu2lnUN1KX49SQ==/109951164531835413.jpg",
    amount: 1523
  ),
];

class NewMusicList{
  const NewMusicList({
    this.id,
    this.title,
    this.bgImagesUrl,
    this.autors,
  });
  final int id;
  final String title;
  final String bgImagesUrl;
  final String autors;
}
final List<NewMusicList> newmuisclist=[
  NewMusicList(
    id:1,
    title: "麻雀",
    bgImagesUrl: "http://p3.music.126.net/TzlSVBiNtpRD2b7MT2Hi-w==/109951164527590793.jpg",
    autors: "李荣浩"
  ),
  NewMusicList(
    id:2,
    title: "炸裂狂想曲",
    bgImagesUrl: "http://p3.music.126.net/o__xMlrlkpCcTykHSOoEIw==/109951164580970314.jpg",
    autors: "R1SE"
  ),
  NewMusicList(
    id:3,
    title: "摩天动物园",
    bgImagesUrl: "http://p4.music.126.net/KTo5oSxH3CPA5PBTeFKDyA==/109951164581432409.jpg",
    autors: "邓紫棋"
  ),
  
];