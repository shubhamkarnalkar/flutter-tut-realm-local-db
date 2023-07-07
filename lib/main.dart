import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:realm_local_db/home/db/home.db.dart';

import 'home/ui/home_page.ui.dart';

void main() {
  var config = Configuration.local([HomeDb.schema]);
  var realm = Realm(config);

  var home = HomeDb("1", "My first note");
  realm.write(() {
    realm.add(home);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Realm',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Realm Home Page'),
    );
  }
}
