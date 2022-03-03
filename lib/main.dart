import 'package:flutter/material.dart';
import 'package:avto_elon/DetailsPage.dart';
import 'HomePage.dart';



void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  theme: ThemeData(primarySwatch: Colors.blue),
       title: "this is title",
       // home: HomePage(),
    initialRoute: "/",
      routes: {
        '/':(context)=>HomePage(),
      // '/details':(context)=>DetailsPage(),
      },
      
      
      
    );
  }
}
