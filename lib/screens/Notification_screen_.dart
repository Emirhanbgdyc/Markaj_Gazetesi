import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markaj_gazetesi/widgets/BottomMenu.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 236, 237, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "MARKAJ",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24,
            color: Color.fromRGBO(146, 35, 42, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(color: Colors.grey),
                const Text(
                  "BİLDİRİMLER",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 25.0),
                NotificationCard(
                  time: "14:47",
                  source: "HABER BAŞLİGİ",
                  title: "HABER İCERİK FUTBOL",
                  category: "FUTBOL",
                  date: "23 Ocak",
                ),
                NotificationCard(
                  time: "14:43",
                  source: "HABER BAŞLİGİ",
                  title: "HABER İCERİK FUTBOL",
                  category: "FUTBOL",
                  date: "23 Ocak",
                ),
                NotificationCard(
                  time: "14:28",
                  source: "HABER BAŞLİGİ",
                  title: "HABER İCERİK FUTBOL",
                  category: "FUTBOL",
                  date: "23 Ocak",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String time;
  final String source;
  final String title;
  final String category;
  final String date;

  const NotificationCard({
    required this.time,
    required this.source,
    required this.title,
    required this.category,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                time,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 60,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                source,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                category,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(width: 8),
              Text(
                date,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
          const Divider(color: Colors.grey),
        ],
      ),
    );
  }
}