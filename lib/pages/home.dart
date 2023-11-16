import 'package:flutter/material.dart';
import 'package:flutter_medical_ui/widgets/doctor_item.dart';
import 'package:flutter_medical_ui/widgets/specialist_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black54,
            ),
          ),
          BottomNavigationBarItem(
            label: "Calender",
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black54,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black54,
            ),
          ),
          BottomNavigationBarItem(
            label: "Notifications",
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      // SizedBox(
                      //   height: 4,
                      // ),
                      Text(
                        "Pesulap Merah",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage("assets/images/pm.png"),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 200, 228),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/surgeon.png",
                      width: 92,
                      height: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "How do you feel?",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const SizedBox(
                          width: 120,
                          child: Text(
                            "Fill out your medical right now",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 150,
                          height: 35,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                height: 64,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(95, 179, 173, 173),
                    borderRadius: BorderRadius.circular(16)),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "How can we help you?",
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SpecialistItem(
                        imagePath: "assets/images/clean.png",
                        imageName: "Dentist"),
                    SizedBox(width: 8),
                    SpecialistItem(
                        imagePath: "assets/images/knife.png",
                        imageName: "Surgeon"),
                    SizedBox(width: 8),
                    SpecialistItem(
                        imagePath: "assets/images/lungs.png",
                        imageName: "Therapy"),
                    SizedBox(width: 8),
                    SpecialistItem(
                        imagePath: "assets/images/hormones.png",
                        imageName: "Physiologist"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor list",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorItem(
                      name: "Nycta Gina",
                      image: "assets/images/doctor1.png",
                      specialist: "Pediatrician",
                    ),
                    DoctorItem(
                      name: "Indah Kusumaningrum",
                      image: "assets/images/doctor2.png",
                      specialist: "Surgeon",
                    ),
                    DoctorItem(
                      name: "Reisa Broto Asmoro",
                      image: "assets/images/doctor3.png",
                      specialist: "Odontologist",
                    ),
                    DoctorItem(
                      name: "Mesty Ariotedjo",
                      image: "assets/images/doctor4.png",
                      specialist: "Ophtamologist",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
