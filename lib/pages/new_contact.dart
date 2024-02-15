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
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
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
                    'Contact Details',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 70,
                        ),
                        Positioned(
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_a_photo,color: Colors.black, size: 30,),
                          ),
                          bottom: -10,
                          left: 80,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: "Full Name",
                            hintStyle: TextStyle(color: Colors.amber),
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
                            labelText: "Phone Number",
                            hintStyle: TextStyle(color: Colors.amber),
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
                            labelText: "Occupation",
                            hintStyle: TextStyle(color: Colors.amber),
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
                            labelText: "Where Met",
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
                            labelText: "Number of children",
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
                            labelText: "State of Origin",
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
                            labelText: "Home Town",
                            hintStyle: TextStyle(color: Colors.amber),
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
                            labelText: "Residence",
                            hintStyle: TextStyle(color: Colors.amber),
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
                            labelText: "Religion",
                            hintStyle: TextStyle(color: Colors.amber),
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
                            labelText: "Denomination",
                            hintStyle: TextStyle(color: Colors.amber),
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
                            labelText: "Place Of Work",
                            hintStyle: TextStyle(color: Colors.amber),
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
                            labelText: "Language Spoken",
                            hintStyle: TextStyle(color: Colors.amber),
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
                            labelText: "School Attended",
                            hintStyle: TextStyle(color: Colors.amber),
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
      ),
    );
  }
}
