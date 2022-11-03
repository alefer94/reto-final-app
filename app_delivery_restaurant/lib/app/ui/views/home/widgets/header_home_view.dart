import 'package:flutter/material.dart';

class HeaderHomeView extends StatelessWidget {
  const HeaderHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310.0,
      padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 18.0),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xd6ffc107), Color(0xfff7746a)],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(36.0),
            bottomRight: Radius.circular(36.0),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 30.0,
                child: Icon(
                  Icons.grid_view,
                  color: Colors.white.withOpacity(0.85),
                ),
              ),
              Column(
                children: [
                  Text(
                    "deliver to",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text("Home",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15))
                ],
              ),
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.png"),
                radius: 30.0,
              ),
            ],
          ),
          const SizedBox(),
          const Text(
            "Lookin' for something special?",
            style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                fontFamily: "",
                letterSpacing: 1.4,
                height: 1.4),
          ),
          //llamamos el metedo input cread obajo
          _inputText(),
        ],
      ),
    );
  }

  /// input
  Widget _inputText() {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
          hintText: "Find whatever your need",
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide.none),
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
          prefixIcon: Container(
            padding: const EdgeInsets.all(15),
            width: 16,
            child: Image.asset('assets/icons/lupa.png'),
          )),
    );
  }
}
