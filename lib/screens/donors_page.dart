import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/donor_details_page.dart';

class AvailableDonor {
  final String? name, sector, patients, image;
  final int? experience;

  AvailableDonor(
      {this.name, this.sector, this.experience, this.patients, this.image});
}

class SearchDonor {
  final String? image, name, gender, blood, age, weight;
  final bool fluVaccine,
      tetanusVaccine,
      hepatitisVaccine,
      hpvVaccine,
      meningitisVaccine;

  SearchDonor({
    this.image,
    this.name,
    this.gender,
    this.blood,
    this.age,
    this.weight,
    this.fluVaccine = false,
    this.tetanusVaccine = false,
    this.hepatitisVaccine = false,
    this.hpvVaccine = false,
    this.meningitisVaccine = false,
  });
}

List<SearchDonor> demoSearchDonors = [
  SearchDonor(
    image: "assets/images/search_doc_1.png",
    name: "Saman Perera",
    gender: "Male",
    blood: "O+",
    age: "45",
    weight: "75 kg",
    fluVaccine: true,
    tetanusVaccine: true,
    hepatitisVaccine: true,
    hpvVaccine: true,
    meningitisVaccine: true,
  ),
  SearchDonor(
    image: "assets/images/search_doc_2.png",
    name: "Peter",
    gender: "Female",
    blood: "O-",
    age: "26",
    weight: "76.8 kg",
    fluVaccine: true,
    tetanusVaccine: true,
    hepatitisVaccine: false,
    hpvVaccine: false,
    meningitisVaccine: false,
  ),
  SearchDonor(
    image: "assets/images/search_doc_3.png",
    name: "Anold",
    gender: "Male",
    blood: "A+",
    age: "45",
    weight: "62.8 kg",
    fluVaccine: true,
    tetanusVaccine: true,
    hepatitisVaccine: false,
    hpvVaccine: false,
    meningitisVaccine: true,
  ),
  SearchDonor(
    image: "assets/images/search_doc_4.png",
    name: "Shehan",
    gender: "Female",
    blood: "A-",
    age: "18",
    weight: "55.3 kg",
    fluVaccine: false,
    tetanusVaccine: false,
    hepatitisVaccine: false,
    hpvVaccine: false,
    meningitisVaccine: false,
  ),
];

class DonorsPage extends StatefulWidget {
  @override
  _DonorsPageState createState() => _DonorsPageState();
}

class _DonorsPageState extends State<DonorsPage> {
  String? selectedGender;
  String? selectedAgeGroup;
  String searchQuery = "";
  String? selectedBlood;
  String? selectedWeight;

  @override
  Widget build(BuildContext context) {
    List<SearchDonor> filteredDonors = demoSearchDonors.where((donor) {
      final matchesGender =
          selectedGender == null || donor.gender == selectedGender;
      final matchesBlood =
          selectedBlood == null || donor.blood == selectedBlood;
      final matchesWeight =
          selectedWeight == null || donor.weight == selectedWeight;
      final matchesAgeGroup = selectedAgeGroup == null ||
          _isInAgeGroup(int.parse(donor.age!), selectedAgeGroup!);
      final matchesSearchQuery =
          donor.name!.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesGender &&
          matchesWeight &&
          matchesBlood &&
          matchesAgeGroup &&
          matchesSearchQuery;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Donor Finder',
          style: TextStyle(
            fontSize: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.fontSize, // Use the same font size as headlineSmall
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          // Filters
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DropdownButton<String>(
                  hint: Text("Select Gender"),
                  value: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                  items: ["Male", "Female"].map((gender) {
                    return DropdownMenuItem(
                      child: Text(gender),
                      value: gender,
                    );
                  }).toList(),
                ),
                DropdownButton<String>(
                  hint: Text("Select Blood Type"),
                  value: selectedBlood,
                  onChanged: (value) {
                    setState(() {
                      selectedBlood = value;
                    });
                  },
                  items: ["O+", "O-", "A+", "A-"].map((blood) {
                    return DropdownMenuItem(
                      child: Text(blood),
                      value: blood,
                    );
                  }).toList(),
                ),
                DropdownButton<String>(
                  hint: Text("Select Age Group"),
                  value: selectedAgeGroup,
                  onChanged: (value) {
                    setState(() {
                      selectedAgeGroup = value;
                    });
                  },
                  items:
                      ["15 - 20", "21 - 40", "41 - 60", "60+"].map((ageGroup) {
                    return DropdownMenuItem(
                      child: Text(ageGroup),
                      value: ageGroup,
                    );
                  }).toList(),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Search by Name'),
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                ),
              ],
            ),
          ),
          // Donors List
          Expanded(
            child: ListView.builder(
              itemCount: filteredDonors.length,
              itemBuilder: (context, index) {
                final donor = filteredDonors[index];
                return ListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DonorDetailsPage(donor: donor))),
                  leading: Image.asset(donor.image!),
                  title: Text(donor.name!),
                  subtitle: Text('${donor.gender}\n${donor.age}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  bool _isInAgeGroup(int age, String ageGroup) {
    switch (ageGroup) {
      case "15 - 20":
        return age >= 15 && age <= 20;
      case "21 - 40":
        return age >= 21 && age <= 40;
      case "41 - 60":
        return age >= 41 && age <= 60;
      case "60+":
        return age >= 60;
      default:
        return false;
    }
  }
}
