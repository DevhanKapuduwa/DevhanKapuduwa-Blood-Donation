import 'package:flutter/material.dart';

class QrDetailsPage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String telephoneNo;
  final String date;
  final String email;
  final String address;
  final String gender;
  final String bloodGroup;
  final Map<String, String> healthChecks;

  const QrDetailsPage({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.telephoneNo,
    required this.date,
    required this.email,
    required this.address,
    required this.gender,
    required this.bloodGroup,
    required this.healthChecks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(222, 37, 18, 246),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("First Name: $firstName"),
            Text("Last Name: $lastName"),
            Text("Telephone No.: $telephoneNo"),
            Text("Date: $date"),
            Text("Email: $email"),
            Text("Address: $address"),
            Text("Gender: $gender"),
            Text("Blood Group: $bloodGroup"),
            Text(
                "Health Checks: ${healthChecks.entries.map((e) => '${e.key}: ${e.value}').join(', ')}"),
          ],
        ),
      ),
    );
  }
}
