import 'package:flutter/material.dart';
import 'package:note_app_local_data_base/views/home_view/home_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff303030),
      ),
      home: const HomeView(),
    );
  }
}
