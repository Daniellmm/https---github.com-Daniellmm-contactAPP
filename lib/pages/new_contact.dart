import 'package:contactapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class new_in extends StatefulWidget {
  const new_in({super.key});

  @override
  State<new_in> createState() => _new_inState();
}

class _new_inState extends State<new_in> {
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
                        builder: (context) => home_screen(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'User Input',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),



                Form(child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email", 
                          hintStyle:TextStyle(color: Colors.amber),
                          suffixIcon: Icon(Icons.mail),
                          filled: true,
                          border: InputBorder.none),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          suffixIcon: Icon(Icons.mail),
                          filled: true,
                          border: InputBorder.none),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          suffixIcon: Icon(Icons.mail),
                          filled: true,
                          border: InputBorder.none),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          suffixIcon: Icon(Icons.mail),
                          filled: true,
                          border: InputBorder.none),
                      onChanged: (value) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
