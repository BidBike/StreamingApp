import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final List<String> imagePoster = [
  'assects/image/BA_T_A.jpg',
  'assects/image/MHA.jpg',
  'assects/image/BA_T_A.jpg',
  'assects/image/MHA.jpg',
  'assects/image/BA_T_A.jpg',
  'assects/image/MHA.jpg',
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            " Action",
            style: TextStyle(fontSize: 26),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: imagePoster.map((path) {
                return buildImage(path);
              }).toList(),
            ),
          ),
          const Text(
            " Comedy",
            style: TextStyle(fontSize: 26),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: imagePoster.map((path) {
                return buildImage(path);
              }).toList(),
            ),
          ),
          const Text(
            " Drama",
            style: TextStyle(fontSize: 26),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: imagePoster.map((path) {
                return buildImage(path);
              }).toList(),
            ),
          ),
          const Text(
            " Horror",
            style: TextStyle(fontSize: 26),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: imagePoster.map((path) {
                return buildImage(path);
              }).toList(),
            ),
          ),
          const Text(
            " Sci-Fi",
            style: TextStyle(fontSize: 26),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: imagePoster.map((path) {
                return buildImage(path);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String path) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Image.asset(
        path,
        height: 150,
        width: 150, // ทำให้ภาพมีขนาดคงที่ในแนวนอน
        fit: BoxFit.cover,
      ),
    );
  }
}
