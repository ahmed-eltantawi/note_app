import 'package:flutter/material.dart';
import 'package:note_app_local_data_base/views/home_view/widgets/note_card_widget.dart';

class HomeViewBody extends StatelessWidget {
  new({super.key});
  final List<Color> cardColorList = [Color(0xffFFCD7A), Color(0xffE7E896)];
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
                backgroundColor: cardColorList[(index % cardColorList.length)],
              ),
              const SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}
