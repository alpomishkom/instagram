import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "Instagram",
          style:
              TextStyle(fontFamily: "Instagram", fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.send_rounded,
                  size: 30,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 38,
                        backgroundImage: NetworkImage(
                            "http://source.unsplash.com/random/$index"),
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      children: [
                        Expanded(
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.red,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage: NetworkImage(
                                    "http://source.unsplash.com/random/$index"),
                              ),
                            ),
                            title: const Text("sunnat_bey_o7o"),
                            trailing: const Icon(Icons.more_horiz),
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            child: Image.network(
                              "http://source.unsplash.com/random/$index",
                              fit: BoxFit.cover,
                            ),
                            width: double.infinity,
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      size: 34,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.comment,
                                      size: 34,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.send,
                                      size: 34,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.bookmark,
                                      size: 34,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}