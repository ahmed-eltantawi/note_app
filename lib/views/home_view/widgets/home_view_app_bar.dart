import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: .start,
      children: [
        SizedBox(width: 10),
        Text("Note App", style: TextStyle(fontSize: 24)),
        Spacer(),
        Icon(Icons.search),
        SizedBox(width: 10),
      ],
    );
  }
}
