// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:webapplication/dashboard/profile/edit/utils.dart';
// import '../resources/add_data.dart';

// class EditTabletProfile extends StatefulWidget {
//   const EditTabletProfile({super.key});
//   @override
//   State<EditTabletProfile> createState() => _EditTabletProfile();
// }

// class _EditTabletProfile extends State<EditTabletProfile> {
//   Uint8List? _image;
//   String imgUrl = '' ;

//   void selectImage() async {
//     Uint8List img = await pickImage(ImageSource.gallery);  
//     setState(() {
//       _image = img;
//     });
//   }

//     String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();

//     final nameController = TextEditingController();
//     saveProfile () async{
//       String name = nameController.text;
//       String resp = await StoreData().saveData(name: name, file: _image!);
//     }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 101, 138, 202),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(Icons.arrow_back_ios),
//         ),
//       ),
//       body: Center(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 32),
//           child: Column(
//             children: [
//               const SizedBox(height: 20),
//               Stack(
//                 children: [
//                   _image != null
//                       ? Container(
//                           width: 100,
//                           height: 100,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             image: DecorationImage(
//                               image: MemoryImage(_image!),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         )
//                       : Container(
//                           width: 100,
//                           height: 100,
//                           decoration: const BoxDecoration(
//                             shape: BoxShape.circle,
//                             image: DecorationImage(
//                               image: AssetImage('assets/images/profile.png'),
//                             ),
//                           ),
//                         ),
//                   Positioned(
//                     bottom: -10,
//                     left: 60,
//                     top: 50,
//                     child: Container(
//                       width: 40,
//                       height: 40,
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 101, 138, 202),
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           width: 1,
//                           color: Colors.white,
//                         ),
//                       ),
//                       child: Center(
//                         child: IconButton(
//                           onPressed: selectImage,
//                           icon: const Icon(
//                             Icons.edit,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//                Padding(
//                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
//                  child: TextField(
//                   controller: nameController,
//                   decoration:const InputDecoration(
//                     hintText: 'Enter name',
//                     contentPadding: EdgeInsets.all(10),
//                     border: OutlineInputBorder(),
//                   ),
//                              ),
//                ),
//                const SizedBox(height: 25),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromARGB(255, 101, 138, 202)),
//                 onPressed: (){
//                   saveProfile();
//                 },
//                 child: const Text('Save profile'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
