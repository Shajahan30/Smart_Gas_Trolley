import 'package:flutter/material.dart';

class dailyuse extends StatefulWidget {
  const dailyuse({Key? key}) : super(key: key);

  @override
  State<dailyuse> createState() => _dailyuseState();
}

class _dailyuseState extends State<dailyuse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Analysis'),
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
