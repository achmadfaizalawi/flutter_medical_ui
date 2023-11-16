import 'package:flutter/material.dart';

class SpecialistItem extends StatelessWidget {
  final String imagePath;
  final String imageName;

  const SpecialistItem(
      {super.key, required this.imagePath, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(95, 179, 173, 173),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 32,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(imageName, style: const TextStyle(
            color: Colors.black87,
            fontSize: 14
          ),)
        ],
      ),
    );
  }
}
