
import 'package:flutter/material.dart';

// class ProfileText extends StatelessWidget {
//    ProfileText({super.key});
//   final nameController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     // return Row(
//     //   mainAxisAlignment: MainAxisAlignment.center,
//     //   crossAxisAlignment: CrossAxisAlignment.center,
//     //   children:  [
//     //     const Text(
//     //       'Name :',
//     //       style: TextStyle(
//     //         color: Color.fromARGB(255, 11, 47, 108),
//     //         fontSize: 19,
//     //         fontWeight: FontWeight.w400
//     //       ),
//     //     ),
//        return Align(
//         alignment: Alignment.center,
//          child: Container(
//             height: 50,
//             width: 120,
//             margin: const EdgeInsets.only(left:20),
//             child: TextFormField(
//               controller: nameController,
//               style: TextStyle(fontSize: 20),
//               decoration: InputDecoration(
//                 hintText: 'Rusafida',
//                 border: InputBorder.none,
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                 )
//               ),
//             ),
//           ),
//        );
//     //   ],
//     // );
//   }
// }

class ProfileBigText extends StatelessWidget {
  const ProfileBigText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: const [
         Text(
          'Scheduled',
           style: TextStyle(
            color: Color.fromARGB(255, 11, 47, 108),
            fontSize: 17,
            fontWeight: FontWeight.w600
          ),
        ),
      ],
    );
  }
}