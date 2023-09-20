import 'package:flutter/material.dart';
import 'package:whatsapp_ui/settingPage.dart';
import 'HomePage.dart';
import 'chatPage.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color:Color.fromARGB(255, 33, 37, 37)
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        )
      ),
      routes: {
        '/':(context) => HomePage(),
        'settingPage':(context) => settingPage(),
        'chatPage':(context) => chatPage(),
      },
    );
  }
}