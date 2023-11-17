import 'package:flutter/material.dart';

class MoviPages extends StatefulWidget {
  const MoviPages({super.key});

  @override
  State<MoviPages> createState() => _MoviPagesState();
}

class _MoviPagesState extends State<MoviPages> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 1,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                height: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "http://source.unsplash.com/random/$index",
                      ),
                      fit: BoxFit.fill,
                    )),
              )
            ],
          );
        },
        itemCount: 1,
      ),
    );
  }
}
