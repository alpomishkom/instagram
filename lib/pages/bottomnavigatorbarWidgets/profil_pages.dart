import 'package:flutter/material.dart';
import 'package:instagram_0/pages/register/register.dart';

import '../movipost_pages/post_pages.dart';
import '../movipost_pages/tabar_pages_images.dart';

class ProfilPages extends StatefulWidget {
  const ProfilPages({super.key});

  @override
  State<ProfilPages> createState() => _ProfilPagesState();
}

class _ProfilPagesState extends State<ProfilPages> with TickerProviderStateMixin {
  int _index = 0;

  final List<Widget> _listPages = <Widget>[
    const PostPages(),
    const MoviPages(),
    Center(child: const Text("tayor emas hali"))
  ];

  void onTap1(int value) {
    setState(
          () {
        _index = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "norqobilov.s1",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.add_box_outlined),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPages(),
                            ),
                          );
                        },
                        child: const Icon(Icons.login_outlined),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 45,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/alp.jpeg"),
                          radius: 43,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "2",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Text(
                            "Post",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "1.1M",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          Text(
                            "Druziya",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "11",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Text("Tashlagansiz",
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    "alpomish.s1",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const Text("bloger"),
                  const Text(
                    "PDP ACADMYA",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black38,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Professional panel",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Oxirgi 30 kun ichida siz 2,6 ming akountga erishdigzi",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 193,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black26),
                              child: const Center(
                                  child: Text("Profildi tahrlash")),
                            ),
                            onTap: () {},
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          InkWell(
                            child: Container(
                              width: 193,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black26),
                              child: const Center(
                                  child: Text("Profilni ulashish")),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        "http://source.unsplash.com/random/$index",
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 120,
                    child: Center(
                      child: TabBar(
                        isScrollable: true,
                        unselectedLabelColor: Colors.black,
                        controller: TabController(length: 3, vsync: this),
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: const [
                          Tab(
                            icon: Icon(
                              Icons.rectangle_rounded,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.movie_filter_outlined,
                            ),
                          ),
                          Tab(
                            icon: Icon(
                              Icons.person,
                            ),
                          ),
                        ],
                        onTap: onTap1,
                      ),
                    ),
                  ),
                  const Divider(),
                  Container(
                    width: double.infinity,
                    height: 400,
                    child: _listPages.elementAt(_index),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
