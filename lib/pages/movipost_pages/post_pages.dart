import 'package:flutter/material.dart';

class PostPages extends StatefulWidget {
  const PostPages({super.key});

  @override
  State<PostPages> createState() => _PostPagesState();
}

class _PostPagesState extends State<PostPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 200,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                    "http://source.unsplash.com/random/$index",
                  ),
                  fit: BoxFit.cover,
                )),
              )
            ],
          );
        },
        itemCount: 9,
      ),
    );
  }
}
