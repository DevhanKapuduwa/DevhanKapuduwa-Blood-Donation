import 'package:flutter/material.dart';

class Detailed_avt extends StatelessWidget {
  final String maintopic;
  final String image_name;
  final Color bg_color;
  final Color text_color;
  final Widget w_child;
  const Detailed_avt({
    Key? key,
    required this.maintopic,
    required this.image_name,
    required this.bg_color,
    required this.text_color,
    required this.w_child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 4.0, right: 4.0, bottom: 8.0, top: 8.0),
      child: ExpansionTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image_name,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          maintopic,
          style: TextStyle(
            color: text_color,
          ),
        ),
        backgroundColor: bg_color,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: w_child,
          )
        ],
      ),
    );
  }
}
