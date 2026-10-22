import 'package:flutter/material.dart';
import 'package:note_app_local_data_base/views/home_view/widgets/note_card_widget.dart';

class HomeViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              NoteCardWidget(
                title: 'Flutter Tips',
                subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed EltantawiBuild Your Career with Ahmed Eltantawi',
                date: DateTime.now(),
              ),
              const SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}
