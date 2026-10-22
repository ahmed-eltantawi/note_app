import 'package:flutter/material.dart';
import 'package:note_app_local_data_base/models/note_model.dart';
import 'package:note_app_local_data_base/views/home_view/widgets/note_card_widget.dart';

List<NoteModel> notes = [
  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),

  NoteModel(
    date: DateTime.now(),
    subTitle: 'Build Your Career with Ahmed Eltantawi Build Your Career with Ahmed Eltantawi',
    title: "Flutter Tips",
  ),
];

class HomeViewBody extends StatelessWidget {
  new({super.key});
  final List<Color> cardColorList = [
    Color(0xffFFCD7A),
    Color(0xffE7E896),
    Color(0xff77D6EE),
    Color(0xffD39DDD),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: NoteCardWidget(
              note: notes[index],
              backgroundColor: cardColorList[(index % cardColorList.length)],
            ),
          );
        },
      ),
    );
  }
}
