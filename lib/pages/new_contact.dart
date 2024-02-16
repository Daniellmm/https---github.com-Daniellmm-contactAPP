import 'dart:html';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';
import 'package:contactapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class new_in extends StatefulWidget {
  const new_in({super.key});

  @override
  State<new_in> createState() => _new_inState();
}

class _new_inState extends State<new_in> {
  File? imageFile;
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
                        imageFile == null
                            ? Image.asset(
                                'asset/images/user default image.png',
                                height: 100,
                                width: 100,
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(150),
                                child: Image.file(
                                  imageFile!,
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.fill,
                                ),
                              ),
                        Positioned(
                          child: IconButton(
                            onPressed: () async {
                              Map<Permission, PermissionStatus> statuses =
                                  await [
                                Permission.storage,
                                Permission.camera,
                              ].request();
                              if (statuses[Permission.storage]!.isGranted &&
                                  statuses[Permission.camera]!.isGranted) {
                                showImagePicker(context);
                              } else {
                                AlertDialog();
                              }
                            },
                            icon: Icon(
                              Icons.add_a_photo,
                              color: Colors.black,
                              size: 30,
                            ),
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

  final picker = ImagePicker();

  void showImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 200,
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Text(
              'Uplode an Image',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          _imgFromCamera();
                        },
                        icon: Icon(
                          Icons.camera,
                          size: 60,
                        ),
                      ),
                      Text(
                        'Camera',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          _imgFromGallery();
                        },
                        icon: Icon(
                          Icons.image,
                          size: 60,
                        ),
                      ),
                      Text(
                        'Gallery',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _imgFromGallery() async {
    await picker
        .pickImage(
      source: ImageSource.gallery,
    )
        .then((value) {
      if (value != null) {
        (value.path);
      }
    });
  }

  _imgFromCamera() async {
    await picker
        .pickImage(
      source: ImageSource.camera,
    )
        .then((value) {
      if (value != null) {
        (value.path);
      }
    });
  }

  // void takePhoto(ImageSource source) async {
  //   final PickedFile = await _picker.getImage(
  //     source: source,
  //   );
  //   setState(() {
  //     _imageFile = PickedFile;
  //   });
  // }
}
