import 'package:flutter/material.dart';

class DisplayPersonalDetails extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String address;
  final String email;
  final String gender;
  final String birthday;
  final String bloodGroup;
  final String telephone;
  final String healthNotes;
  final String imagePath;

  const DisplayPersonalDetails({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.email,
    required this.gender,
    required this.birthday,
    required this.bloodGroup,
    required this.telephone,
    required this.healthNotes,
    required this.imagePath,
  }) : super(key: key);

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
            child: Image.asset(
              'assets/images/login5.jpg',
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height / 20) * 8,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              left: 0,
              top: (MediaQuery.of(context).size.height / 812) * 181,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width,
                height: (MediaQuery.of(context).size.height / 812) * 638,
              )),
          Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 122,
              top: (MediaQuery.of(context).size.height / 812) * 109,
              child: Material(
                  shape: CircleBorder(),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    color: Colors.white,
                    width: 132,
                    height: 132,
                  ))),
          Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 128,
              top: (MediaQuery.of(context).size.height / 812) * 114,
              child: Material(
                shape: CircleBorder(),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  imagePath,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 10,
              top: (MediaQuery.of(context).size.height / 812) * 28,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_circle_left_rounded,
                    size: 36,
                    color: Color.fromARGB(255, 37, 18, 246),
                  ))),
          Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 20,
              top: (MediaQuery.of(context).size.height / 812) * 275,
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
            top: (MediaQuery.of(context).size.height / 812) * 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InfoDisplayField(
                  label: 'First Name',
                  value: firstName,
                ),
                InfoDisplayField(
                  label: 'Last Name',
                  value: lastName,
                ),
                InfoDisplayField(
                  label: 'Address',
                  value: address,
                ),
                InfoDisplayField(
                  label: 'Email',
                  value: email,
                ),
                InfoDisplayField(
                  label: 'Gender',
                  value: gender,
                ),
                InfoDisplayField(
                  label: 'Birthday',
                  value: birthday,
                ),
                InfoDisplayField(
                  label: 'Blood Group',
                  value: bloodGroup,
                ),
                InfoDisplayField(
                  label: 'Telephone No.',
                  value: telephone,
                ),
                InfoDisplayField(
                  label: 'Special Health Notes',
                  value: healthNotes,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoDisplayField extends StatelessWidget {
  final String label;
  final String value;

  const InfoDisplayField({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 11, 6, 75),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
