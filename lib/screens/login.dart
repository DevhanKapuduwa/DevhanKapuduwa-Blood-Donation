import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/dashboard.dart';
import 'package:flutter_application_7/screens/signup.dart';

class login_screen extends StatelessWidget {
  const login_screen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF19173d),
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 5, 5, 246), // Bottom widget
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/images/login4.jpg',
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height / 20) * 9,
              fit: BoxFit.cover,
            ),
            /*),*/
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height / 20) * 7,
            left: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                color: Color.fromARGB(255, 235, 234, 255),
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height / 20) * 14,
                child: Center(
                    /* child: Text(
                    /*'Hello, Positioned with BorderRadius!',*/
                    textAlign: TextAlign.center,
                  ),*/
                    ),
              ),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height / 20) * 7.5,
            left: (MediaQuery.of(context).size.width / 20) * 8,
            child: Text(
              'Login',
              style: TextStyle(
                  color: Color.fromARGB(222, 37, 18, 246),
                  fontSize: 24,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height / 20) * 8.5,
            left: (MediaQuery.of(context).size.width / 20) * 2,
            child: Container(
              padding: EdgeInsets.only(left: 10),
              height: (MediaQuery.of(context).size.height / 20),
              width: (MediaQuery.of(context).size.width / 20) * 16,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 234, 255),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 33, 44, 53),
                  width: 2,
                ),
              ),
              /*child: Row(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'example@gmail.com',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                    Icon(Icons.email_outlined)
                  ],
                )*/
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.email_outlined),
                    hintText: 'example@gmail.com',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10)),
                onChanged: (value) {},
              ),
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height / 20) * 10,
            left: (MediaQuery.of(context).size.width / 20) * 2,
            child: Container(
              padding: EdgeInsets.only(left: 10),
              height: (MediaQuery.of(context).size.height / 20),
              width: (MediaQuery.of(context).size.width / 20) * 16,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 235, 234, 255),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color.fromARGB(255, 33, 44, 53),
                    width: 2,
                  )),
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10)),
                onChanged: (value) {},
              ),
            ),
          ),
          Positioned(
              top: (MediaQuery.of(context).size.height / 20) * 11.25,
              left: (MediaQuery.of(context).size.width / 20) * 0.6,
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                    onChanged: (bool? newValue) {
                      // Do something when the checkbox state changes
                      print('Checkbox state changed: $newValue');
                    },
                  ),
                  MaterialButton(
                      child: Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {}),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 20) * 3.0,
                  ),
                  MaterialButton(
                      child: Text(
                        'Forget Password',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(222, 37, 18, 246),
                            fontWeight: FontWeight.w700),
                      ),
                      onPressed: () {})
                ],
              )),
          Positioned(
              top: (MediaQuery.of(context).size.height / 20) * 13,
              left: (MediaQuery.of(context).size.width / 20) * 3,
              child: Material(
                elevation: 8,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: (MediaQuery.of(context).size.height / 20),
                  width: (MediaQuery.of(context).size.width / 20) * 14,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Color.fromARGB(255, 235, 234, 255),
                        width: 1,
                      ),
                      gradient: LinearGradient(colors: [
                        const Color.fromARGB(255, 95, 59, 255),
                        Color.fromARGB(255, 37, 18, 246)
                      ])),
                  child: MaterialButton(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 235, 234, 255),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => dashboard()));
                    },
                  ),
                ),
              )),
          Positioned(
            top: (MediaQuery.of(context).size.height / 20) * 14.5,
            left: (MediaQuery.of(context).size.width / 20) * 3,
            child: Material(
              elevation: 8,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: (MediaQuery.of(context).size.width / 20) * 14,
                height: (MediaQuery.of(context).size.height / 20),
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color.fromARGB(222, 37, 18, 246),
                    width: 1,
                  ),
                  color: const Color.fromARGB(255, 235, 234, 255),
                ),
                child: MaterialButton(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.g_mobiledata_rounded,
                          color: Color.fromARGB(222, 37, 18, 246),
                        ),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 20) * 3,
                        ),
                        Text(
                          'Google',
                          style: TextStyle(
                            color: Color.fromARGB(222, 37, 18, 246),
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {}),
              ),
            ),
          ),
          Positioned(
              top: (MediaQuery.of(context).size.height / 20) * 15.75,
              left: (MediaQuery.of(context).size.width / 20) * 6.9,
              child: MaterialButton(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(222, 37, 18, 246),
                        fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup()));
                  }))
        ],
      ),
    );
  }
}
