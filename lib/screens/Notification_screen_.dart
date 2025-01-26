import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:markaj_gazetesi/widgets/DrawerMenu.dart';
import '../widgets/BottomMenu.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onError,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: IconButton(
              onPressed: () {
                context.go('/home');
              },
              icon: const Icon(Icons.close),
            ),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.onError,
        title: Text(
          "MARKAJ",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(color: Colors.grey),
              SizedBox(height: 20),
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
        ],
      ),
      drawer: DrawerMenu(context),
      drawerScrimColor: Colors.transparent,
      bottomNavigationBar: const BottomMenu(),
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
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text(
                  time,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  source,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Text(
                    date,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.grey),
        ],
      ),
    );
  }
}
