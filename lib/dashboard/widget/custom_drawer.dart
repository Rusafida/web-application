import 'package:flutter/material.dart';
import '../../constants/services/methods.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
    //  backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 11, 64, 155),
                  ),
                ),
                const SizedBox(width: 20),
                const Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Color.fromARGB(255, 11, 64, 155),
                  ),
                )
              ],
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.build,
              color: Color.fromARGB(255, 11, 64, 155),
            ),
            title: Text(
              'Exercise',
              style: TextStyle(
                color: Color.fromARGB(255, 11, 64, 155),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 11, 64, 155),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Color.fromARGB(255, 11, 64, 155),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.history,
              color: Color.fromARGB(255, 11, 64, 155),
            ),
            title: Text(
              'History',
              style: TextStyle(
                color: Color.fromARGB(255, 11, 64, 155),
              ),
            ),
          ),
           ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Color.fromARGB(255, 11, 64, 155),
            ),
            title: GestureDetector(
              onTap: signOut,
              child: const Text(
                'SignOut',
                style: TextStyle(
                  color: Color.fromARGB(255, 11, 64, 155),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
