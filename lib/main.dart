import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/Ui/ScreenOne/HomeScreen.dart';
import 'package:music_app/Ui/ScreenOne/PlaylistScreen.dart';
import 'package:music_app/Ui/ScreenOne/SongScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        )
      ),
      home: const ScreenOne(),
      getPages: [
        GetPage(name: '/', page: ()=>const ScreenOne()),
        GetPage(name: '/song', page: ()=> const SongScreen()),
        GetPage(name: '/playlists', page: ()=>const PlaylistScreen())
      ],
    );
  }
}
