import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomPage(),
    );
  }
}

class HomPage extends StatelessWidget {
  const HomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.78),
        //backgroundColor: Color(0xff363636),
        title: const Text(
          'Flutter Hylophone',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
          child: InkWell(
            onTap: () {
              AudioPlayer().play(AssetSource('notes/do.mp3'));
            },
            child: Container(
              width: double.infinity,
              color: const Color(0xffEf443A),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('notes/re.mp3'));
            },
            child: Container(
              width: double.infinity,
              color: const Color(0xfff99700),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              AudioPlayer().play(AssetSource('notes/mi.mp3'));
            },
            child: Container(
              width: double.infinity,
              color: const Color(0xffffE93B),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              AudioPlayer().play(AssetSource('notes/fa.mp3'));
            },
            child: Container(
              width: double.infinity,
              color: const Color(0xff4CB050),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('notes/sol.mp3'));
            },
            child: Container(
              width: double.infinity,
              color: const Color(0xff2E968C),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('notes/lya.mp3'));
            },
            child: Container(
              width: double.infinity,
              color: const Color(0xff2996f5),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    AudioPlayer().play(AssetSource('notes/si.mp3'));
                  },
                  child: Container(
                    // width: double.infinity,
                    color: const Color(0xff9B28B1),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    AudioPlayer().play(AssetSource('notes/do2.mp3'));
                  },
                  child: Container(
                    // width: double.infinity,
                    color: const Color(0xff363636),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              AudioPlayer().play(AssetSource('notes/azan1.mp3'));
            },
            child: Container(
              width: double.infinity,
              color: const Color(0xff2996f5),
            ),
          ),
        ),
      ]),
    );
  }
}
