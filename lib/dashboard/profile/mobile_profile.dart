// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:webapplication/dashboard/profile/edit/utils.dart';
import 'package:webapplication/dashboard/profile/resources/add_data.dart';
import 'package:webapplication/dashboard/profile/widget/details_container.dart';
import 'package:webapplication/dashboard/profile/widget/listtile_container.dart';
import 'package:webapplication/dashboard/profile/widget/profile_text.dart';
import '../../constants/theme/theme_provider.dart';

class MobileProfile extends StatefulWidget {
  const MobileProfile({super.key});

  @override
  State<MobileProfile> createState() => _MobileProfileState();
}

class _MobileProfileState extends State<MobileProfile> {
  Uint8List? _image;
  final nameController = TextEditingController();

  //select image
  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  saveProfile() async {
     String name = nameController.text;
    try {
      String resp = await StoreData().saveData(file: _image!, name: name);
     // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('successful'),
          backgroundColor: Color.fromARGB(255, 17, 97, 58),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 64, 155),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text('MyProfile'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Consumer<ThemeProvider>(
              builder:
                  (BuildContext context, ThemeProvider value, Widget? child) {
                return GestureDetector(
                  onTap: () {
                    context.read<ThemeProvider>().toggleButton();
                  },
                  child: const Icon(Icons.mode_night, color: Colors.white),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  _image != null
                      ? Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: MemoryImage(_image!),
                              fit: BoxFit.cover,
                            ),
                          ),
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
              height: 5,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 160,
                margin: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Rusafida',
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),
            ),           
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 101, 138, 202)),
              onPressed: () {
                 saveProfile();
              },
              child: const Text('Update'),
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
        ),
      ),
    );
  }
}
