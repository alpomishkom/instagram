import 'package:flutter/material.dart';
import 'package:instagram_0/pages/bottomnavigartor/bottomnavigator.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});
  final double a = 20;

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages>
    with TickerProviderStateMixin {
  final TextEditingController username = TextEditingController();
  final TextEditingController passworld = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool confirmation = false;
  bool confirmation1 = false;

  String textUsername = "a";
  String textPassword = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 170,
          ),
          const Text(
            "Instagram",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Instagram",
              fontSize: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Form(
                  key: _globalKey,
                  child: Column(
                    children: [
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        controller: username,
                        decoration: InputDecoration(
                          label: Text("Phone number, email or username"),
                          hintText: "hone number, email or username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            return "You made a mistake";
                          } else if (value != textUsername) {
                            return "You made a mistake error";
                          }
                          confirmation1 = true;
                          return null;
                        },
                      ),
                       SizedBox(
                        height: widget.a,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        controller: passworld,
                        decoration: InputDecoration(
                          label: Text("Password"),
                          hintText: " password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        validator: (value) {
                          if (value == '') {
                            return "passworld error";
                          } else if (value != textPassword) {
                            return "password error";
                          }
                          confirmation = true;
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    _globalKey.currentState?.validate();
                    if (confirmation1 && confirmation) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigator(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.blueAccent,
                          Colors.redAccent
                        ],
                      ),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(child: Text("Open")),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Forgot your login details? Get help logging in",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
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
                      "OR",
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
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        Text(
                          "Continue as Alpomish Norqobilov",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                const Column(
                  children: [
                    SizedBox(
                      height: 190,
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Don't have an account? Sign up",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
