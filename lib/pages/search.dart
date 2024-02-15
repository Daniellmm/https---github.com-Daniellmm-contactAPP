import 'package:contactapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class update extends StatefulWidget {
  const update({super.key});

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => home_screen()));
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      size: 30,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}