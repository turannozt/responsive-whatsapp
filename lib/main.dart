import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/colors.dart';
import 'package:responsive_whatsapp_clone/responsive/responsive_layout.dart';
import 'package:responsive_whatsapp_clone/screens/mobile_screen_layout.dart';
import 'package:responsive_whatsapp_clone/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreebLayout: MobileScreenLayout(),
        webScreebLayout: WebScreenLayout(),
      ),
    );
  }
}
