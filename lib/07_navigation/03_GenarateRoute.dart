import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('HomePage'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/product'),
                child: Text('查看商品'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/product/1'),
                child: Text('查看商品1详情'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/product/2'),
                child: Text('查看商品2详情'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'user'),
                child: Text('跳往404页面'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('返回'),
        ),
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.id}) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('当前商品id是 ${this.id}'),
      ),
    );
  }
}
