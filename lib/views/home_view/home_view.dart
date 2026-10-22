import 'package:flutter/material.dart';
import 'package:note_app_local_data_base/views/home_view/widgets/home_view_app_bar.dart';
import 'package:note_app_local_data_base/views/home_view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          HomeViewAppBar(),
          SizedBox(height: 10),

          Expanded(child: HomeViewBody()),
        ],
      ),
    );
  }
}
