import 'package:flutter/material.dart';

class MOviPages extends StatefulWidget {
  const MOviPages({super.key});

  @override
  State<MOviPages> createState() => _MOviPagesState();
}

class _MOviPagesState extends State<MOviPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Image.network(
            "http://source.unsplash.com/random/$index",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}