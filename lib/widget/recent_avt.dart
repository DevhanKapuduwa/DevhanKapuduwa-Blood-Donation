import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String maintopic;
  final String subtopic;
  final String imagelist;
  const MyWidget({
    Key? key,
    required this.maintopic,
    required this.subtopic,
    required this.imagelist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 235, 234, 255),
            border: Border.all()),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              imagelist,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            maintopic,
          ),
          subtitle: Text(subtopic),
          minVerticalPadding: 0,
        ),
      ),
    );
  }
}
