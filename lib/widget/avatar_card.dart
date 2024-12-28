import 'package:flutter/material.dart';

class AvatarCard extends StatelessWidget {
  const AvatarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("assets/images/Asma_Khan.png"),
        ),
        SizedBox(
          height: 10,
        ),
        const Text(
          "Saman Perera",
          style: TextStyle(
            fontSize: 18, // Change this to a specific value or your constant
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
