import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "WORDLE.",
            style: TextStyle(
                fontFamily: "Fredoka",
                fontSize: 50,
                fontWeight: FontWeight.w600),
          ),

          // sized box for space
          SizedBox(
            height: 30,
          ),

          Container(
            width: 150,
            height: 70,
            // decoration: BoxDecoration(
            //     color: Color(0xFFdfe2ff),
            //     borderRadius: BorderRadius.circular(15)),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xFFdfe2ff)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)))),
              child: Center(
                  child: Text(
                "Pengaturan",
                style: TextStyle(
                    fontFamily: "Fredoka",
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              )),
            ),
          ),

          // sized box for space
          SizedBox(
            height: 5,
          ),

          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                fixedSize: WidgetStatePropertyAll(Size(70, 70)),
                backgroundColor: WidgetStatePropertyAll(Color(0xFFdfe2ff)),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)))),
            child: Icon(
              Icons.settings,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ));
  }
}
