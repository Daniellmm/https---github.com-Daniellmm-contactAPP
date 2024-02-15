import 'dart:ui';

import 'package:contactapp/pages/new_contact.dart';
import 'package:contactapp/pages/search.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.only(right: 20, left: 20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(118, 39, 147, 236),
              Color.fromARGB(255, 2, 44, 77)
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'My Contact Dairy',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 39),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => new_in()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 200,
                  width: 400,
                  child: Center(
                    child: Stack(children: [
                      // blur effect
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5,
                          sigmaY: 5,
                        ),
                      ),

                      // gradient effect
                      Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.white.withOpacity(0.9)),
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(0.5),
                              Colors.white.withOpacity(0.3),
                            ],
                          ),
                        ),
                      ),

                      // child
                      Center(
                        child: Text(
                          'Save Contact ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => update()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 200,
                  width: 400,
                  child: Center(
                    child: Stack(children: [
                      // blur effect
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5,
                          sigmaY: 5,
                        ),
                      ),

                      // gradient effect
                      Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.white.withOpacity(0.9)),
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(0.5),
                              Colors.white.withOpacity(0.3),
                            ],
                          ),
                        ),
                      ),

                      // child
                      Center(
                        child: Text(
                          'Go To Contact ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
