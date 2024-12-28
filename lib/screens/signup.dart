import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/login.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF19173d),
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
            ),
            Positioned(
              /*left: (MediaQuery.of(context).size.width / 375) * 20,
              top: (MediaQuery.of(context).size.height / 812) * 38,*/
              child: Image.asset(
                'assets/images/login5.jpg',
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height / 20) * 8,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                left: 0,
                top: (MediaQuery.of(context).size.height / 812) * 135,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height / 812) * 638,
                )),
            Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 115,
              top: (MediaQuery.of(context).size.height / 812) * 154,
              child: Text(
                'Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                  color: Color.fromARGB(255, 37, 18, 246),
                ),
              ),
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 140,
              top: (MediaQuery.of(context).size.height / 812) * 182,
              child: Text(
                'Create a new account',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  color: Color.fromARGB(255, 14, 7, 90),
                ),
              ),
            ),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 20,
                top: (MediaQuery.of(context).size.height / 812) * 215,
                child: Text(
                  "Personal Information",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 11, 6, 75),
                  ),
                )),
            Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 21,
              top: (MediaQuery.of(context).size.height / 812) * 250,
              child: Row(
                children: <Widget>[
                  Container(
                    /*padding: EdgeInsets.only(left: 10),*/
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "First Name",
                          hintText: "Amy",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 375) * 20,
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Last Name",
                          hintText: "Jackson",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 21,
                top: (MediaQuery.of(context).size.height / 812) * 320,
                child: Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 334,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Address",
                        hintText: "Address Na",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    onChanged: (value) {},
                  ),
                )),
            Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 21,
              top: (MediaQuery.of(context).size.height / 812) * 390,
              child: Row(
                children: <Widget>[
                  Container(
                    /*padding: EdgeInsets.only(left: 10),*/
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Gender",
                          hintText: "Female",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 375) * 20,
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Birthday",
                          hintText: "15-02-2000",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 21,
              top: (MediaQuery.of(context).size.height / 812) * 460,
              child: Row(
                children: <Widget>[
                  Container(
                    /*padding: EdgeInsets.only(left: 10),*/
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Blood Group",
                          hintText: "A-",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                    width: (MediaQuery.of(context).size.width / 375) * 20,
                  ),
                  Container(
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Telephone No.",
                          hintText: "044-7856321",
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10)),
                      onChanged: (value) {},
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 21,
                top: (MediaQuery.of(context).size.height / 812) * 530,
                child: Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 334,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "jackson0123@gmail.com",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    onChanged: (value) {},
                  ),
                )),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 21,
                top: (MediaQuery.of(context).size.height / 812) * 600,
                child: Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 334,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "use number, letter & symbols ",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    onChanged: (value) {},
                  ),
                )),
            Positioned(
                left: (MediaQuery.of(context).size.width / 375) * 21,
                top: (MediaQuery.of(context).size.height / 812) * 670,
                child: Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 334,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        hintText: "again enter the password",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                    onChanged: (value) {},
                  ),
                )),
            Positioned(
              left: 0,
              top: (MediaQuery.of(context).size.height / 812) * 740,
              child: Row(
                children: <Widget>[
                  MaterialButton(
                      child: Container(
                        /*padding: EdgeInsets.only(left: 10),*/
                        height: (MediaQuery.of(context).size.height / 812) * 50,
                        width: (MediaQuery.of(context).size.width / 375) * 157,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(255, 37, 18, 246),
                              width: 2,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Color.fromARGB(255, 37, 18, 246),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => login_screen()));
                      }),
                  MaterialButton(
                      child: Container(
                        /*padding: EdgeInsets.only(left: 10),*/
                        height: (MediaQuery.of(context).size.height / 812) * 50,
                        width: (MediaQuery.of(context).size.width / 375) * 157,
                        decoration: BoxDecoration(
                            /*border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),*/
                            color: Color.fromARGB(255, 37, 18, 246),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => login_screen()));
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}
