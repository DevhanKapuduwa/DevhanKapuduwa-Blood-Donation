import 'package:flutter/material.dart';

class Button_box extends StatelessWidget {
  final String text;
  final String imagename;
  final Color bgcolor;
  final Color textcolor;
  final IconData iconName;
  final Function()? onTapver;
  const Button_box({
    Key? key,
    required this.text,
    required this.imagename,
    required this.textcolor,
    required this.bgcolor,
    required this.iconName,
    this.onTapver,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        splashColor: Colors.black26,
        onTap: onTapver,
        child: Ink(
          color: Color.fromARGB(222, 37, 18, 246),
          width: 80,
          height: 80,
          padding: EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 5),
          child: Column(
            children: <Widget>[
              Icon(
                iconName,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                text,
                style: TextStyle(
                  color: textcolor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
