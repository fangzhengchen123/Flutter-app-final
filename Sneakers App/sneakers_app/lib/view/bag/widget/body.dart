// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:sneakers_app/theme/custom_app_theme.dart';

import '../../../../utils/app_methods.dart';
import '../../../animation/fadeanimation.dart';
import '../../../utils/constants.dart';
import '../../../view/bag/widget/empty_list.dart';
import '../../../data/dummy_data.dart';
import '../../../models/models.dart';
import '../../../pay.dart';

class BodyBagView extends StatefulWidget {
  const BodyBagView({Key? key}) : super(key: key);

  @override
  _BodyBagViewState createState() => _BodyBagViewState();
}

class _BodyBagViewState extends State<BodyBagView>
    with SingleTickerProviderStateMixin {
  int lengthsOfItemsOnBag = itemsOnBag.length;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      width: width,
      height: height,
      child: Column(
        children: [
          topText(width, height),
          Divider(
            color: Colors.grey,
          ),
          itemsOnBag.isEmpty
              ? EmptyList()
              : Column(children: [
                  mainListView(width, height),
                  SizedBox(
                    height: 12,
                  ),
                  bottomInfo(width, height),
                ])
        ],
      ),
    );
  }

  //  顶部菜单
  topText(width, height) {
    return Container(
      width: width,
      height: height / 14,
      child: FadeAnimation(
        delay: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("购物车", style: AppThemes.bagTitle),
            Text(
              "共有 ${lengthsOfItemsOnBag} 件商品",
              style: AppThemes.bagTotalPrice,
            ),
          ],
        ),
      ),
    );
  }

  // 按钮
  materialButton(width, height) {
    return FadeAnimation(
      delay: 3,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        minWidth: width / 1.2,
        height: height / 15,
        color: AppConstantsColor.materialButtonColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PayPage()),
          );
        },
        child: Text(
          "去支付",
          style: TextStyle(color: AppConstantsColor.lightTextColor),
        ),
      ),
    );
  }



  // 数据视图
  mainListView(width, height) {
    return Container(
      width: width,
      height: height / 1.6,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: itemsOnBag.length,
          itemBuilder: (ctx, index) {
            ShoeModel currentBagItem = itemsOnBag[index];

            return FadeAnimation(
              delay: 1.5 * index / 4,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 1),
                width: width,
                height: height / 5.2,
                child: Row(
                  children: [
                    Container(
                      width: width / 2.8,
                      height: height / 5.7,
                      child: Stack(children: [
                        Positioned(
                          top: 20,
                          left: 10,
                          child: Container(
                            width: width / 3.6,
                            height: height / 7.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey[350],
                            ),
                          ),
                        ),
                        Positioned(
                            right: 2,
                            bottom: 15,
                            child: RotationTransition(
                              turns: AlwaysStoppedAnimation(-40 / 360),
                              child: Container(
                                width: 140,
                                height: 140,
                                child: Image(
                                  image: AssetImage(
                                    currentBagItem.imgAddress,
                                  ),
                                ),
                              ),
                            ))
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(currentBagItem.model,
                              style: AppThemes.bagProductModel),
                          SizedBox(
                            height: 4,
                          ),
                          Text("\$${currentBagItem.price}",
                              style: AppThemes.bagProductPrice),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    itemsOnBag.remove(currentBagItem);
                                    lengthsOfItemsOnBag = itemsOnBag.length;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[300],
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.remove,
                                    size: 15,
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("1", style: AppThemes.bagProductNumOfShoe),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[300],
                                  ),
                                  child: Center(
                                      child: Icon(
                                    Icons.add,
                                    size: 15,
                                  )),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  bottomInfo(width, height) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      width: width,
      height: height / 7,
      child: Column(
        children: [
          FadeAnimation(
            delay: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("总共", style: AppThemes.bagTotalPrice),
                Text("\$${AppMethods.sumOfItemsOnBag()}",
                    style: AppThemes.bagSumOfItemOnBag),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          materialButton(width, height)
        ],
      ),
    );
  }
}

class PayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '支付页面示例',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  // 控制对话框显示的变量
  bool _showSuccessDialog = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('支付'),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '支付信息',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: '信用卡号码',
                    hintText: '请输入信用卡号码',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '姓名',
                          hintText: '请输入姓名',
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '密码',
                          hintText: '请输入密码',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // 模拟支付成功，显示支付成功对话框
                    setState(() {
                      _showSuccessDialog = true;
                    });
                  },
                  child: Text('提交支付'),
                ),
              ],
            ),
          ),
          // 支付成功对话框
          // 当_showSuccessDialog为true时显示
          if (_showSuccessDialog)
            Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.check_circle, size: 48, color: Colors.green),
                      SizedBox(height: 16),
                      Text(
                        '支付成功',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          // 点击对话框上的按钮后关闭对话框
                          setState(() {
                            _showSuccessDialog = false;
                          });
                        },
                        child: Text('确定'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
      // 底部导航栏，用于显示浮动操作按钮
      bottomNavigationBar: _showSuccessDialog
          ? null
          : FloatingActionButton(
        onPressed: () {
          // 模拟支付成功，显示支付成功对话框
          setState(() {
            _showSuccessDialog = true;
          });
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
