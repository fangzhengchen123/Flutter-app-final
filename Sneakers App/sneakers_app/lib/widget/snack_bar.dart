import 'package:flutter/material.dart';

SnackBar successSnackBar() => SnackBar(
      backgroundColor: Colors.green[400],
      content: const Text('成功加入购物车'),
      action: SnackBarAction(
        textColor: Colors.white,
        label: '确定',
        onPressed: () {},
      ),
    );

SnackBar failedSnackBar() => SnackBar(
      backgroundColor: Colors.red[400],
      content: const Text('这个商品已经加入了'),
      action: SnackBarAction(
        textColor: Colors.white,
        label: '确定',
        onPressed: () {},
      ),
    );
