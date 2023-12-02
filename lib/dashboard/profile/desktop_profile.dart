import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:webapplication/dashboard/profile/edit/utils.dart';
import 'package:webapplication/dashboard/profile/widget/details_container.dart';
import 'package:webapplication/dashboard/profile/widget/listtile_container.dart';
import 'package:webapplication/dashboard/profile/widget/profile_text.dart';

class DesktopProfile extends StatefulWidget {
  const DesktopProfile({super.key});

  @override
  State<DesktopProfile> createState() => _DesktopProfileState();
}

class _DesktopProfileState extends State<DesktopProfile> {
  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  editButton() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              'Enter the name',
            ),
            content: const TextField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "Username",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              _image != null
                  ? CircleAvatar(
                      radius: 60,
                      backgroundImage: MemoryImage(_image!),
                    )
                  : CircleAvatar(
                      radius: 60,
                      child: Image.asset('assets/images/profile.png'),
                    ),
              Positioned(
                bottom: -10,
                left: 80,
                child: IconButton(
                  onPressed: selectImage,
                  icon: const Icon(Icons.add_a_photo),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  ProfileText(),
             Align(
        alignment: Alignment.center,
         child: Container(
            height: 50,
            width: 120,
            margin: const EdgeInsets.only(left:20),
            child: TextFormField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                hintText: 'Rusafida',
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),
          ),
       ),
            IconButton(
              onPressed: editButton,
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Edit health details',
            style: TextStyle(
              color: Color.fromARGB(255, 11, 64, 155),
            ),
          ),
        ),
        const DetailsContainer(),
        const SizedBox(height: 10),
        const ProfileBigText(),
        const ListtileContainer(
          title: 'Yoga',
          subtitle: 'Today 5pm - 6pm',
          trailingIcon: Icons.more_horiz,
        ),
        const ListtileContainer(
          title: 'Zumba',
          subtitle: 'Monday 4pm - 6pm',
          trailingIcon: Icons.more_horiz,
        ),
        const ListtileContainer(
          title: 'Yoga',
          subtitle: 'Today 5pm - 6pm',
          trailingIcon: Icons.more_horiz,
        )
      ],
    );
  }
}
