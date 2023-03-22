import 'package:dining_time/pages/indexPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'database/sqldb.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SqlDb().insertData("INSERT INTO plat (name, image,RestaurantId) VALUES ('ttt', 'mmm',1)");
  SqlDb().insertData("INSERT INTO restaurant (name, image) VALUES ('res2', 'imagere2.png')");
  SqlDb().readData("SELECT * FROM restaurant");
  SqlDb().readData("SELECT * FROM plat");
  SqlDb().readData("SELECT p.name as pn ,r.id as idr,p.id as idp FROM plat as p INNER JOIN restaurant AS r ON p.RestaurantId = r.id Where p.RestaurantId =2 ");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  IndexPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    );
  }
}
