import 'package:flutter/material.dart';
import 'package:onli_studio/intro.dart';
import 'package:provider/provider.dart';

import 'provider/providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
            providers: multiProviders,
      child: MaterialApp(
        title: 'Onli',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Intro(),
      ),
    );
  }
}
