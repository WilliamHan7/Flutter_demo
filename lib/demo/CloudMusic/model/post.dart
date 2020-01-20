import 'dart:ffi';

class MusicList {
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

final List<MusicList> muisclist = [
  MusicList(
      id: 1,
      title: "少年去闯荡，你还年轻怕什么受伤",
      bgImagesUrl:
          "http://p2.music.126.net/5nsZ3SG_8awCEV0jf07YmA==/109951164465913093.jpg",
      amount: 1523),
  MusicList(
      id: 2,
      title: "冬日暖歌｜慵懒轻快旋律，陪你过冬季",
      bgImagesUrl:
          "http://p2.music.126.net/21kRupyH0FTLfWs7H_0jgw==/109951164575657763.jpg",
      amount: 1152),
  MusicList(
      id: 3,
      title: "驾车/经典驾车曲目",
      bgImagesUrl:
          "http://p2.music.126.net/yuwgtBNMYd5TvxusftJFyg==/109951164568507042.jpg",
      amount: 1523),
  MusicList(
      id: 4,
      title: "你绝对熟悉的电音 自嗨蹦迪",
      bgImagesUrl:
          "http://p2.music.126.net/jyEBx1l6iukbWTB9TKvCFg==/109951164412824316.jpg",
      amount: 1523),
  MusicList(
      id: 5,
      title: "运动打球必备/节奏控",
      bgImagesUrl:
          "http://p1.music.126.net/h8eNLOVW_QYDvrZocr8Vmg==/109951164319458603.jpg",
      amount: 1523),
  MusicList(
      id: 6,
      title: "小众佳曲迷醉气息蝶自来 | 欧美篇",
      bgImagesUrl:
          "http://p2.music.126.net/MJA6MRIFlu2lnUN1KX49SQ==/109951164531835413.jpg",
      amount: 1523),
];

class ColudAvatorList {
  const ColudAvatorList({
    this.cardAvatorImg,
    this.cardAvatorName,
    this.cardAvatorNum,
    this.cardText,
    this.cardImg,
    this.cardAvatorBrief,
  });
  final String cardAvatorImg;
  final String cardAvatorName;
  final String cardAvatorNum;
  final String cardText;
  final String cardImg;
  final String cardAvatorBrief;
}

final List<ColudAvatorList> coludavatorlist = [
  ColudAvatorList(
    cardAvatorName: '贾思明',
    cardAvatorImg:
        "https://upload.jianshu.io/users/upload_avatars/13213889/63ff7383-6278-494f-950d-ed632e93c670.jpg",
    cardAvatorNum: "22.2万粉丝",
    cardAvatorBrief: "DJ巨星，中国音乐家",
    cardImg:
        'https://upload-images.jianshu.io/upload_images/14903703-f28bae65051cf368.jpg',
    cardText: '留余庆，留余庆，忽遇恩人。幸娘亲，幸娘亲，积得阴功',
  ),
  ColudAvatorList(
    cardAvatorName: '贾思明',
    cardAvatorImg:
        "https://upload.jianshu.io/users/upload_avatars/13213889/63ff7383-6278-494f-950d-ed632e93c670.jpg",
    cardAvatorNum: "22.2万粉丝",
    cardAvatorBrief: "DJ巨星，中国音乐家",
    cardImg:
        'https://upload-images.jianshu.io/upload_images/14903703-f28bae65051cf368.jpg',
    cardText: '留余庆，留余庆，忽遇恩人。幸娘亲，幸娘亲，积得阴功',
  ),
  ColudAvatorList(
    cardAvatorName: '贾思明',
    cardAvatorImg:
        "https://upload.jianshu.io/users/upload_avatars/13213889/63ff7383-6278-494f-950d-ed632e93c670.jpg",
    cardAvatorNum: "22.2万粉丝",
    cardAvatorBrief: "DJ巨星，中国音乐家",
    cardImg:
        'https://upload-images.jianshu.io/upload_images/14903703-f28bae65051cf368.jpg',
    cardText: '留余庆，留余庆，忽遇恩人。幸娘亲，幸娘亲，积得阴功',
  ),
];

class NewMusicList {
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

final List<NewMusicList> newmuisclist = [
  NewMusicList(
      id: 1,
      title: "麻雀",
      bgImagesUrl:
          "http://p3.music.126.net/TzlSVBiNtpRD2b7MT2Hi-w==/109951164527590793.jpg",
      autors: "李荣浩"),
  NewMusicList(
      id: 2,
      title: "炸裂狂想曲",
      bgImagesUrl:
          "http://p3.music.126.net/o__xMlrlkpCcTykHSOoEIw==/109951164580970314.jpg",
      autors: "R1SE"),
  NewMusicList(
      id: 3,
      title: "摩天动物园",
      bgImagesUrl:
          "http://p4.music.126.net/KTo5oSxH3CPA5PBTeFKDyA==/109951164581432409.jpg",
      autors: "邓紫棋"),
];



class PlazaList{
  const PlazaList({
      this.img,
      this.title,
      this.author,
      this.authorUrl,
      this.type,
      this.worksAspectRatio
  });
  final String img;
  final String title;
  final String author;
  final String authorUrl;
  final String type;
  final double worksAspectRatio;
}

final List<PlazaList> plazalist = [
  PlazaList(
    img:"http://ci.xiaohongshu.com/39cfc319-044b-30a1-b25a-2eaf7a1bb3af?imageView2/2/w/540/format/jpg",
    title: "如何全年拥有迷人马甲线❓❗️专业秘诀分享～",
    author: "EnaSun伊娜",
    authorUrl: "https://img.xiaohongshu.com/avatar/5c0b49ac93fc040001fe3f3a.jpg@80w_80h_90q_1e_1c_1x.jpg",
    type: '练习',
    worksAspectRatio: 2
  ),
  PlazaList(
    img:"http://ci.xiaohongshu.com/e8f83d8d-62e3-324b-9c66-9b7a2e478c5a?imageView2/2/w/540/format/jpg",
    title: "晨光本味 百乐Juice 斑马荧光笔推荐‼️",
    author: "胡萝北你要嘛",
    authorUrl: "https://img.xiaohongshu.com/avatar/5e22c1864440da00019074fb.jpg@80w_80h_90q_1e_1c_1x.jpg",
    type: '练习',
    worksAspectRatio: 2
  ),
  PlazaList(
    img:"http://ci.xiaohongshu.com/0e517567-ba7c-397d-91ab-2ddb9c9f429f?imageView2/2/w/540/format/jpg",
    title: "提前帮你们感受了一下最新一季的LV👔",
    author: "胡萝北你要嘛",
    authorUrl: "https://img.xiaohongshu.com/avatar/5b24082214de414523e7b1e4.jpg@80w_80h_90q_1e_1c_1x.jpg",
    type: '练习',
    worksAspectRatio: 2
  ),
  PlazaList(
    img:"http://ci.xiaohongshu.com/1cb36569-4ef5-3f76-a318-d8aa6b8610e1?imageView2/2/w/540/format/jpg",
    title: "买大牌一定要试😭靴子只能看不能穿太痛苦了",
    author: "大佬甜er",
    authorUrl: "https://img.xiaohongshu.com/avatar/5abcb47814de4166c51af4b2.jpg@80w_80h_90q_1e_1c_1x.jpg",
    type: '练习',
    worksAspectRatio: 2
  ),
  PlazaList(
    img:"http://ci.xiaohongshu.com/b252fe4a-fbdf-382d-8576-fbb2bf452c66?imageView2/2/w/540/format/jpg",
    title: "国行Switch到手，对于小白来说还是非常香！",
    author: "田大大官人",
    authorUrl: "https://img.xiaohongshu.com/avatar/5d5f67abfd74ba000178df48.jpg@80w_80h_90q_1e_1c_1x.jpg",
    type: '练习',
    worksAspectRatio: 2
  ),
  PlazaList(
    img:"http://ci.xiaohongshu.com/8cf026fc-4d19-3e75-9369-cb3badd80729?imageView2/2/w/540/format/jpg",
    title: "国行Switch到手，对于小白来说还是非常香！",
    author: "八爪Ching",
    authorUrl: "https://img.xiaohongshu.com/avatar/5c83a72035ad080001fbdbae.jpg@80w_80h_90q_1e_1c_1x.jpg",
    type: '练习',
    worksAspectRatio: 2
  ),


];