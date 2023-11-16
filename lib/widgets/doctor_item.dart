import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  final String name;
  final String image;
  final String specialist;

  const DoctorItem(
      {super.key,
      required this.name,
      required this.image,
      required this.specialist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        width: 160,
        decoration: BoxDecoration(
          color: const Color.fromARGB(95, 179, 173, 173),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "dr. $name",
              overflow: TextOverflow.fade,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              specialist,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
