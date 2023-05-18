import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/auth_provider.dart';

import '../screens/login.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';


void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: ((context) => TodoListProvider())),
    //     ChangeNotifierProvider(create: ((context) => AuthProvider())),
    //   ],
    //   child: MyApp(),
    // ),
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group 4 Project',
      initialRoute: '/login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/login': (context) => const LoginPage(),
        
      },
    );
  }
}