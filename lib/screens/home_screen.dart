import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/login.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Food2.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.7),
            Colors.black.withOpacity(.2),
          ])),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Save Life Donate Blood',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '-------------------------------',
                  style:
                      TextStyle(color: Colors.white, height: 1.4, fontSize: 18),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        const Color.fromARGB(255, 95, 59, 255),
                        Color.fromARGB(255, 37, 18, 246)
                      ])),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    child: Text(
                      'Start',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => login_screen()));
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  child: Text(
                    'type anything',
                    style: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
