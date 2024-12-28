import 'package:flutter/material.dart';

import '../screens/person_details.dart';

class PersonalDetailsSavedScreen extends StatelessWidget {
  final PersonalDetails details;

  const PersonalDetailsSavedScreen({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved Personal Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("First Name: ${details.firstName}"),
            Text("Last Name: ${details.lastName}"),
            Text("Address: ${details.address}"),
            Text("Email: ${details.email}"),
            Text("Gender: ${details.gender}"),
            Text("Birthday: ${details.birthday}"),
            Text("Blood Group: ${details.bloodGroup}"),
            Text("Telephone No.: ${details.telephone}"),
            Text("Special Health Notes: ${details.healthNotes}"),
          ],
        ),
      ),
    );
  }
}
