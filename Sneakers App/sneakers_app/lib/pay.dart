import 'package:flutter/material.dart';

// import 'payment_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '支付页面',
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