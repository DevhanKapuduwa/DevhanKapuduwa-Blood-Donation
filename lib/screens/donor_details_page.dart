import 'package:flutter/material.dart';

import 'donors_page.dart';

class DonorDetailsPage extends StatelessWidget {
  final SearchDonor donor;

  DonorDetailsPage({required this.donor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(donor.name!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(donor.image!),
            ),
            SizedBox(height: 20),
            Text(
              "Name: ${donor.name}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Gender: ${donor.gender}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Blood Type: ${donor.blood}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Age: ${donor.age}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "Weight: ${donor.weight}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              "Vaccination Status",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildVaccineSwitch("Flu Vaccine", donor.fluVaccine),
            _buildVaccineSwitch("Tetanus Vaccine", donor.tetanusVaccine),
            _buildVaccineSwitch("Hepatitis Vaccine", donor.hepatitisVaccine),
            _buildVaccineSwitch("HPV Vaccine", donor.hpvVaccine),
            _buildVaccineSwitch("Meningitis Vaccine", donor.meningitisVaccine),
          ],
        ),
      ),
    );
  }

  Widget _buildVaccineSwitch(String label, bool value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(fontSize: 18)),
        Switch(
          value: value,
          onChanged: (bool newValue) {
            // You might want to handle the state change here
            // For this static page, it's just to show the switch state
          },
        ),
      ],
    );
  }
}
