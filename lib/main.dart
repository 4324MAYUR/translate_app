import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:translate_app/provider/translation_provider.dart';
import 'package:translate_app/screen/home/page/homepage.dart';

void main()
{
  runApp(
     MultiProvider(
         providers: [
           ChangeNotifierProvider(
             create: (context) => TranslationProvider()
             ..translateData(),
           ),
         ],
         child: const MyApp(),
     ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
