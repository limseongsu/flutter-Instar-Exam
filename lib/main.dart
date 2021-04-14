import 'package:flutter/material.dart';
import 'package:flutter_instar_examclone/root_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'root_page.dart';

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    // Uncomment this to use the auth emulator for testing
    // await FirebaseAuth.instance.useEmulator('http://localhost:9099');
    runApp(MyApp());
  }


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor:  Colors.black,

      ),
      home: RootPage(),
    );
  }
}

