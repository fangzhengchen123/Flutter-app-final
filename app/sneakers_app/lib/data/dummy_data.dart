import 'package:flutter/material.dart';

import '../models/models.dart';

final List<ShoeModel> availableShoes = [

  ShoeModel(
    name: "安踏",
    model: "安踏男子套头卫衣",
    price: 100.00,
    imgAddress: "assets/images/An1.png",
    modelColor: const Color(0xffDE0106),
  ),

  ShoeModel(
    name: "安踏",
    model: "男子套头卫衣",
    price: 110.00,
    imgAddress: "assets/images/An2.png",
    modelColor: const Color(0xff3F7943),
  ),

  ShoeModel(
    name: "安踏",
    model: "男梭织外套",
    price: 120.00,
    imgAddress: "assets/images/An3.png",
    modelColor: const Color(0xffE66863),
  ),

  ShoeModel(
    name: "安踏",
    model: "男短袖POLO衫",
    price: 110.00,
    imgAddress: "assets/images/An4.png",
    modelColor: const Color(0xffD7D8DC),
  ),

  ShoeModel(
    name: "李宁",
    model: "男子短袖T恤",
    price: 100.00,
    imgAddress: "assets/images/LN1.png",
    modelColor: const Color(0xffDE0106),
  ),

  ShoeModel(
    name: "李宁",
    model: "迪士尼联名文化衫",
    price: 110.00,
    imgAddress: "assets/images/LN2.png",
    modelColor: const Color(0xff3F7943),
  ),

  ShoeModel(
    name: "李宁",
    model: "凉爽短袖T恤",
    price: 120.00,
    imgAddress: "assets/images/LN3.png",
    modelColor: const Color(0xffE66863),
  ),

  ShoeModel(
    name: "李宁",
    model: "宽松短袖文化衫",
    price: 110.00,
    imgAddress: "assets/images/LN4.png",
    modelColor: const Color(0xffD7D8DC),
  ),



  ShoeModel(
    name: "耐克",
    model: "AIR-MAX",
    price: 130.00,
    imgAddress: "assets/images/N1.png",
    modelColor: const Color(0xffDE0106),
  ),
  ShoeModel(
    name: "耐克",
    model: "AIR-JORDAN MID",
    price: 190.00,
    imgAddress: "assets/images/N2.png",
    modelColor: const Color(0xff3F7943),
  ),
  ShoeModel(
    name: "耐克",
    model: "ZOOM",
    price: 160.00,
    imgAddress: "assets/images/N3.png",
    modelColor: const Color(0xffE66863),
  ),
  ShoeModel(
    name: "耐克",
    model: "Air-FORCE",
    price: 110.00,
    imgAddress: "assets/images/N4.png",
    modelColor: const Color(0xffD7D8DC),
  ),
  ShoeModel(
    name: "耐克",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/N5.png",
    modelColor: const Color(0xff37376B),
  ),
  ShoeModel(
    name: "耐克",
    model: "ZOOM",
    price: 115.00,
    imgAddress: "assets/images/N6.png",
    modelColor: const Color(0xffE4E3E8),
  ),
  ShoeModel(
    name: "耐克",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/N7.png",
    modelColor: const Color(0xffD68043),
  ),
  ShoeModel(
    name: "耐克",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/N8.png",
    modelColor: const Color(0xffE2E3E5),
  ),
  ShoeModel(
    name: "阿迪达斯",
    model: "MELTING SADNESS SUPERSTAR",
    price: 155.00,
    imgAddress: "assets/images/A1.png",
    modelColor: const Color(0xff37376B),
  ),
  ShoeModel(
    name: "阿迪达斯",
    model: "SUPERSTAR SHOES",
    price: 180.00,
    imgAddress: "assets/images/A2.png",
    modelColor: const Color(0xffDE0106),
  ),
  ShoeModel(
    name: "阿迪达斯",
    model: "SUPERSTAR SHOES",
    price: 200.00,
    imgAddress: "assets/images/A3.png",
    modelColor: const Color(0xffE2E3E5),
  ),
  ShoeModel(
    name: "阿迪达斯",
    model: "SUPERSTAR 82 SHOES",
    price: 300.00,
    imgAddress: "assets/images/A4.png",
    modelColor: const Color(0xff3F7943),
  ),
];

List<ShoeModel> itemsOnBag = [];

final List<UserStatus> userStatus = [
  UserStatus(
    emoji: '😴',
    txt: "离开",
    selectColor: const Color(0xff121212),
    unSelectColor: const Color(0xffbfbfbf),
  ),
  UserStatus(
    emoji: '💻',
    txt: "工作中",
    selectColor: const Color(0xff05a35c),
    unSelectColor: const Color(0xffCEEBD9),
  ),
  UserStatus(
    emoji: '🎮',
    txt: "游戏中",
    selectColor: const Color(0xffFFD237),
    unSelectColor: const Color(0xffFDDFBB),
  ),
  UserStatus(
    emoji: '´･ᴗ･`',
    txt: "摆烂中",
    selectColor: const Color(0xffba3a3a),
    unSelectColor: const Color(0xffdb9797),
  ),
];

final List categories = [
  '安踏',
  '李宁',
  '海澜之家',
  '鸿星尔克',
  '耐克',
  '唐狮',
];
final List featured = [
  '男装',
  '女装',
  '童装',
  '鞋子'
];

final List<double> sizes = [6, 7.5, 8, 9.5];
