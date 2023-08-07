import 'package:flutter/material.dart';
//import 'package:mobx_apps/app_list/screens/list_screen.dart';
import 'package:mobx_apps/app_login/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apps MobX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(), //AppLogin
      //home: const ListScreen(), //AppList
    );
  }
}
