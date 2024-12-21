import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../widgets/BottomMenu.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors["blackcolor"] ,
      body: Center(
        child: Text('History Ekrani'),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
