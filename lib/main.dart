import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webapplication/login/responsive/responsive_login.dart';
import 'constants/theme/theme_provider.dart';
import 'dashboard/responsive/responsive_dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   // options: DefaultFirebaseOptions.currentPlatform
    options: const FirebaseOptions(
    apiKey: 'AIzaSyDj-z2Z1_ECb5OtjMgOLR8-Xsizl6rcoU8',
    appId: '1:349688189647:web:316a5423393ba849231dba',
    messagingSenderId: '349688189647',
    projectId: 'my-projects-c497d',
    storageBucket: 'my-projects-c497d.appspot.com',
    ),
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child:const MyApp(),
      ),
   );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const ScreenMain(),
    );
  }
}

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        // ignore: non_constant_identifier_names
        builder: (BuildContext context,AsyncSnapshot Snapshot){
          if (Snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator());          
          }else if(Snapshot.hasError){
            return const Center(child: Text('Something went wrong'));
          } else if (Snapshot.hasData){
            return const ResponsiveDashboard();
          } else {
            return const ResponsiveLoginScreens();
          }       
        },
      ),
    );
  }
}
