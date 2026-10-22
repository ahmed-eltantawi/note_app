import 'package:flutter/material.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.date,
    required this.backgroundColor,
  });
  final String title;
  final String subTitle;
  final DateTime date;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      // container
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: .circular(16),
        ),
        height: 250,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
          child:
              // ====== Content =========
              Column(
                crossAxisAlignment: .start,
                children: [
                  // -- title--
                  Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 32),
                  ),

                  // -- delete icon --
                  Align(
                    alignment: .topRight,
                    child: IconButton(
                      icon: Icon(Icons.delete, color: Colors.black, size: 26),
                      onPressed: () {},
                    ),
                  ),

                  // -- sub title --
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

                  // -- date time --
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
