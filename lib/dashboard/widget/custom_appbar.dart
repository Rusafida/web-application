import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.onClick,
  });

  final Function onClick;

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  Widget build(BuildContext context) {
    return AppBar(
     // automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 11, 64, 155),
      title: const Center(
        child: Text(
          'Let\'s SignIn',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            onClick();
          },
          icon: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color:  Color.fromARGB(255, 11, 64, 155),
            ),
          ),
        ),
      ],
    );
  }
}
