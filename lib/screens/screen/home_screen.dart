import 'package:flutter/material.dart';
import 'package:quickly_design_one/constant/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Scrren"),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: const Center(child: Text("Home Screen"),),
    );
  }
}
