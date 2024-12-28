import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/dashboard.dart';
import 'package:flutter_application_7/widget/more_recent_avt.dart';

class blood_log extends StatelessWidget {
  const blood_log({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Donation History',
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
                maintopic: 'DC-1458-7856-7893',
                image_name: 'assets/images/blood_image.jpg',
                bg_color: Color.fromARGB(255, 235, 234, 255),
                text_color: Color.fromARGB(255, 23, 13, 130),
                w_child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Location: Japura Donation Camp"),
                    Text("Date    : 04-06-2024"),
                    Text("Time    : 12.53 pm")
                  ],
                )),
            Detailed_avt(
                maintopic: 'DC-1458-7856-7896',
                image_name: 'assets/images/blood_image.jpg',
                bg_color: Color.fromARGB(255, 235, 234, 255),
                text_color: Color.fromARGB(255, 23, 13, 130),
                w_child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Location: Japura Donation Camp"),
                    Text("Date    : 04-06-2024"),
                    Text("Time    : 12.53 pm")
                  ],
                )),
            Detailed_avt(
                maintopic: 'DC-1458-7636-7893',
                image_name: 'assets/images/blood_image.jpg',
                bg_color: Color.fromARGB(255, 235, 234, 255),
                text_color: Color.fromARGB(255, 23, 13, 130),
                w_child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Location: Japura Donation Camp"),
                    Text("Date    : 04-06-2024"),
                    Text("Time    : 12.53 pm")
                  ],
                )),
            Detailed_avt(
                maintopic: 'DC-1477-7856-7893',
                image_name: 'assets/images/blood_image.jpg',
                bg_color: Color.fromARGB(255, 235, 234, 255),
                text_color: Color.fromARGB(255, 23, 13, 130),
                w_child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Location: Japura Donation Camp"),
                    Text("Date    : 04-06-2024"),
                    Text("Time    : 12.53 pm")
                  ],
                )),
          ],
        ));
  }
}
