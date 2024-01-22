import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 100,
              ),
              SpaceMedium(),
              Text(
                'Aashik Shihaab',
                style: TextStyle(fontFamily: 'Pacifico', fontSize: 20),
              ),
              SpaceSmall(),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SpaceLarge(),
              ContactCard(
                icon: Icons.phone,
                title: "Phone",
                data: "+94 751 633 133",
              ),
              SpaceSmall(),
              ContactCard(
                icon: Icons.mail,
                title: "Email",
                data: "sihaabama@gmail.com",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SpaceLarge extends StatelessWidget {
  const SpaceLarge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }
}

class SpaceMedium extends StatelessWidget {
  const SpaceMedium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 10);
  }
}

class SpaceSmall extends StatelessWidget {
  const SpaceSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 5);
  }
}

class ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  const ContactCard({
    super.key,
    required this.icon,
    required this.title,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 320,
        child: ListTile(
          minLeadingWidth: 50,
          leading: Icon(icon),
          title: Text(data),
        ),
      ),
    );
  }
}
