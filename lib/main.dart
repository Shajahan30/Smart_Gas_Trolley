import 'package:flutter/material.dart';
import 'package:gastrolley/daily_gas_useage.dart';
import 'package:gastrolley/lpg_refill.dart';
import 'package:gastrolley/precautions_page.dart';
import 'package:gastrolley/signup_page.dart';
import 'package:gastrolley/updated_schema.dart';

Future<void> main() async {
  //await initializeFirebase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Signup(),
      initialRoute: '/',
      routes: {
        '/daily_page': (context) => dailyuse(),
        '/lpg_refill': (context) => lpgrefill(),
        '/updated_schema': (context) => updatedschema(),
        '/precaution_page': (context) => precautions(),
      },
    );
  }
}
