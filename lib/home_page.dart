import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: buildContainer(context, 'images/lpg.png',
                  'Book your lpg refill', '/lpg_refill'),
            ),
            Expanded(
              child: buildContainer(context, 'images/statistics.png',
                  'Daily usage of gas', '/daily_page'),
            ),
            Expanded(
              child: buildContainer(context, 'images/scheme.png',
                  'Get updates of schema', '/updated_schema'),
            ),
            Expanded(
              child: buildContainer(context, 'images/precautions.png',
                  'Precautions about gas usage', '/precaution_page'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(
      BuildContext context, String imagepath, String text, String? routeName) {
    return GestureDetector(
      onTap: () {
        if (routeName != null) {
          Navigator.pushNamed(context, routeName);
        }
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(imagepath, height: 100, width: 100),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
