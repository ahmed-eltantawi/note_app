import 'package:flutter/material.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.date,
  });
  final String title;
  final String subTitle;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: .circular(16),
        ),
        height: 200,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(title, style: TextStyle(color: Colors.black, fontSize: 32)),
              Align(
                alignment: .centerRight,
                child: Icon(Icons.delete, color: Colors.black, size: 32),
              ),
              Opacity(
                opacity: 0.7,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    subTitle,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ),

              Spacer(),
              Align(
                alignment: .centerRight,
                child: Text(
                  date.toString().substring(0, 10),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
