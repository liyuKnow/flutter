import 'package:flutter/material.dart';

class LearnFlutterScreen extends StatefulWidget {
  const LearnFlutterScreen({super.key});

  @override
  State<LearnFlutterScreen> createState() => _LearnFlutterScreenState();
}

class _LearnFlutterScreenState extends State<LearnFlutterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Learn Flutter"),
      ),
      body: Column(
        children: [
          const Text("Image From assets folder"),
          Image.asset(
            "assets/images/owl_1.jpg",
          ),
          const SizedBox(
            height: 12,
          ),
          const Text("Image From assets folder"),
          const Divider(
            color: Colors.black,
            height: 4,
            indent: 10,
            endIndent: 10,
          ),
          Image.network(
            "https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_960_720.jpg",
          ),
        ],
      ),
    );
  }
}
