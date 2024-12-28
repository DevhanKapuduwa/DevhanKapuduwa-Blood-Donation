import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/dashboard.dart';
import 'package:flutter_application_7/widget/more_recent_avt.dart';

class recent_avt_screen extends StatelessWidget {
  const recent_avt_screen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Activity Log',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(222, 37, 18, 246),
          leading: IconButton(
            icon: const Icon(Icons.arrow_circle_left_rounded),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => dashboard()));
            },
            color: Colors.white,
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(15), child: Container()),
        ),
        backgroundColor: Color.fromARGB(255, 235, 234, 255),
        body: Column(
          children: <Widget>[
            Detailed_avt(
                maintopic: 'Visit Gym',
                image_name: 'assets/images/gym_image.jpg',
                bg_color: Color.fromARGB(255, 235, 234, 255),
                text_color: Color.fromARGB(255, 23, 13, 130),
                w_child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Location: Kohuwala Road"),
                    Text("Stayed Duration: 2h")
                  ],
                )),
            Detailed_avt(
                maintopic: 'Visit Gym',
                image_name: 'assets/images/gym_image.jpg',
                bg_color: Color.fromARGB(255, 235, 234, 255),
                text_color: Color.fromARGB(255, 23, 13, 130),
                w_child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Location: Kohuwala Road"),
                    Text("Stayed Duration: 2h")
                  ],
                )),
            Detailed_avt(
                maintopic: 'Visit Hospital',
                image_name: 'assets/images/hos_image.jpg',
                bg_color: Color.fromARGB(255, 235, 234, 255),
                text_color: Color.fromARGB(255, 23, 13, 130),
                w_child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Location: Kohuwala Road"),
                    Text("Stayed Duration: 2h")
                  ],
                )),
            Detailed_avt(
                maintopic: 'Visit Restaurant',
                image_name: 'assets/images/res_image.jpg',
                bg_color: Color.fromARGB(255, 235, 234, 255),
                text_color: Color.fromARGB(255, 23, 13, 130),
                w_child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Location: Kohuwala Road"),
                    Text("Stayed Duration: 2h")
                  ],
                )),
          ],
        ));
  }
}
