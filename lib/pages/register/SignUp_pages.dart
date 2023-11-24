import 'package:flutter/material.dart';
import 'package:instagram_0/pages/register/register.dart';

class SinUpPages extends StatefulWidget {
  const SinUpPages({super.key});

  @override
  State<SinUpPages> createState() => _SinUpPagesState();
}

class _SinUpPagesState extends State<SinUpPages> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController usaeremail = TextEditingController();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController passworld = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Instagram",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Instagram",
                    fontSize: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                key: _globalKey,
                child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: usaeremail,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: "phone number or email",
                          hintStyle: const TextStyle(color: Colors.white54)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: fullname,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        hintText: "Full name",
                        hintStyle: const TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: username,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: "Username",
                          hintStyle: const TextStyle(color: Colors.white54)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      cursorColor: Colors.white,
                      style: const TextStyle(color: Colors.white),
                      controller: passworld,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          hintText: "Passworld",
                          hintStyle: const TextStyle(color: Colors.white54)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                ),
                onPressed: () {},
                child: const Text(
                  "Sing Up",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 165,
                    height: 1,
                    decoration: const BoxDecoration(
                        border: Border(), color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "or",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 165,
                    height: 1,
                    decoration: const BoxDecoration(
                        border: Border(), color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 50),
                ),
                onPressed: () {},
                icon: Icon(Icons.facebook),
                label: Text(
                  "Login in with facebook",
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white54),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPages()));
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.white70),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
