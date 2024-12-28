import 'package:flutter/material.dart';

class BannerDesign extends StatelessWidget {
  final String text;
  final String imgText;
  final Color bgcolor;
  final Color textcolor;
  final Function()? onTapver;
  const BannerDesign({
    Key? key,
    required this.text,
    required this.imgText,
    required this.bgcolor,
    required this.textcolor,
    this.onTapver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(imgText), fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                    color: Colors.black,
                    width: 0.5,
                  )),
                  borderRadius: BorderRadius.circular(20),
                  gradient:
                      LinearGradient(begin: Alignment.bottomCenter, colors: [
                    bgcolor.withOpacity(.8),
                    bgcolor.withOpacity(.5),
                    bgcolor.withOpacity(.4),
                    bgcolor.withOpacity(.1),
                    bgcolor.withOpacity(.0),
                  ]),
                ),
              ),
            ),
            Positioned(
                top: 50,
                left: 20,
                width: 200,
                child: Text(
                  text,
                  style: TextStyle(
                    color: textcolor,
                  ),
                )),
            Positioned(
                bottom: 10,
                right: 10,
                child: IconButton(
                  onPressed: onTapver,
                  icon: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: bgcolor,
                    size: 40,
                  ),
                  color: Colors.blue[700],
                ))
          ],
        ));
  }
}
