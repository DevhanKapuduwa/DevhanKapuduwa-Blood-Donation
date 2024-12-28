import 'package:flutter/material.dart';

import '../new/personal_details_saved.dart';
import 'dashboard.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  _PersonalDetailsScreenState createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _bloodGroupController = TextEditingController();
  final TextEditingController _telephoneController = TextEditingController();
  final TextEditingController _healthNotesController = TextEditingController();

  String _selectedCountryCode = "US+1"; // Default country code

  final List<Map<String, String>> _countries = [
    {'name': 'United States', 'code': 'US+1'},
    {'name': 'United Kingdom', 'code': '+44'},
    {'name': 'Canada', 'code': 'CA+1'},
    {'name': 'Australia', 'code': '+61'},
    {'name': 'India', 'code': '+91'},
    // Add more countries and their codes here
  ];

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
                  'assets/images/propic.jpg',
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => dashboard()));
                  },
                  icon: Icon(
                    Icons.arrow_circle_left_rounded,
                    size: 36,
                    color: Color.fromARGB(255, 37, 18, 246),
                  ))),
          Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 197,
              top: (MediaQuery.of(context).size.height / 812) * 206,
              child: Container(
                width: 40,
                child: Material(
                  color: Color.fromARGB(255, 37, 18, 246),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: CircleBorder(),
                  child: IconButton(
                      splashRadius: 20,
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(
                        Icons.mode_edit_outline_rounded,
                        size: 20,
                        color: Colors.white,
                      )),
                ),
              )),
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
            child: Row(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 157,
                  child: TextField(
                    controller: _firstNameController,
                    decoration: InputDecoration(
                        labelText: "First Name",
                        hintText: "Amy",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width / 375) * 20,
                ),
                Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 157,
                  child: TextField(
                    controller: _lastNameController,
                    decoration: InputDecoration(
                        labelText: "Last Name",
                        hintText: "Jackson",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 21,
              top: (MediaQuery.of(context).size.height / 812) * 390,
              child: Container(
                height: (MediaQuery.of(context).size.height / 812) * 50,
                width: (MediaQuery.of(context).size.width / 375) * 334,
                child: TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Address Na",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(10)),
                ),
              )),
          Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 21,
              top: (MediaQuery.of(context).size.height / 812) * 460,
              child: Container(
                height: (MediaQuery.of(context).size.height / 812) * 50,
                width: (MediaQuery.of(context).size.width / 375) * 334,
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Jackson0123@gmail.com",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(10)),
                ),
              )),
          Positioned(
            left: (MediaQuery.of(context).size.width / 375) * 21,
            top: (MediaQuery.of(context).size.height / 812) * 530,
            child: Row(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 157,
                  child: TextField(
                    controller: _genderController,
                    decoration: InputDecoration(
                        labelText: "Gender",
                        hintText: "Female",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width / 375) * 20,
                ),
                GestureDetector(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );

                    if (pickedDate != null) {
                      setState(() {
                        _birthdayController.text =
                            "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
                      });
                    }
                  },
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 812) * 50,
                    width: (MediaQuery.of(context).size.width / 375) * 157,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        _birthdayController.text.isEmpty
                            ? "Select Birthday"
                            : _birthdayController.text,
                        style: TextStyle(
                          fontSize: 16,
                          color: _birthdayController.text.isEmpty
                              ? Colors.grey
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width / 375) * 21,
            top: (MediaQuery.of(context).size.height / 812) * 600,
            child: Row(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 100,
                  child: DropdownButtonFormField<String>(
                    value: _selectedCountryCode,
                    items: _countries.map((Map<String, String> country) {
                      return DropdownMenuItem<String>(
                        value: country['code'],
                        child: Text("${country['name']} (${country['code']})"),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedCountryCode = newValue!;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(10),
                      labelText: "Country Code",
                    ),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width / 375) * 20,
                ),
                Container(
                  height: (MediaQuery.of(context).size.height / 812) * 50,
                  width: (MediaQuery.of(context).size.width / 375) * 200,
                  child: TextField(
                    controller: _telephoneController,
                    decoration: InputDecoration(
                        labelText: "Telephone No.",
                        hintText: "7856321",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(10)),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              left: (MediaQuery.of(context).size.width / 375) * 21,
              top: (MediaQuery.of(context).size.height / 812) * 670,
              child: Container(
                height: (MediaQuery.of(context).size.height / 812) * 50,
                width: (MediaQuery.of(context).size.width / 375) * 334,
                child: TextField(
                  controller: _healthNotesController,
                  decoration: InputDecoration(
                      labelText: "Special Health Notes",
                      hintText: "-----------------------",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(10)),
                ),
              )),
          Positioned(
            left: 0,
            top: (MediaQuery.of(context).size.height / 812) * 740,
            child: Row(
              children: <Widget>[
                MaterialButton(
                    child: Container(
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
                    onPressed: () {}),
                MaterialButton(
                    child: Container(
                      height: (MediaQuery.of(context).size.height / 812) * 50,
                      width: (MediaQuery.of(context).size.width / 375) * 157,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 37, 18, 246),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    onPressed: () {
                      PersonalDetails details = PersonalDetails(
                        firstName: _firstNameController.text,
                        lastName: _lastNameController.text,
                        address: _addressController.text,
                        email: _emailController.text,
                        gender: _genderController.text,
                        birthday: _birthdayController.text,
                        bloodGroup: _bloodGroupController.text,
                        telephone:
                            "$_selectedCountryCode ${_telephoneController.text}",
                        healthNotes: _healthNotesController.text,
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PersonalDetailsSavedScreen(details: details),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PersonalDetails {
  String firstName;
  String lastName;
  String address;
  String email;
  String gender;
  String birthday;
  String bloodGroup;
  String telephone;
  String healthNotes;

  PersonalDetails({
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.email,
    required this.gender,
    required this.birthday,
    required this.bloodGroup,
    required this.telephone,
    required this.healthNotes,
  });
}
