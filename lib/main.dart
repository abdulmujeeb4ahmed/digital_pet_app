import 'package:flutter/material.dart';

void main() {
  runApp(RunMyApp());
}

class RunMyApp extends StatefulWidget {
  const RunMyApp({super.key});

  @override
  State<RunMyApp> createState() => _RunMyAppState();
}

class _RunMyAppState extends State<RunMyApp> {
  ThemeMode _themeMode = ThemeMode.system; // Variable to store theme mode

  // Method to change the theme
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey), // Light theme
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: _themeMode, // Set themeMode to selected value
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome To My Flutter App!'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Choose the Theme:',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Button to change to light theme
                ElevatedButton(
                  onPressed: () {
                    changeTheme(ThemeMode.light);
                  },
                  child: const Text('Light Theme'),
                ),
                // Button to change to dark theme
                ElevatedButton(
                  onPressed: () {
                    changeTheme(ThemeMode.dark);
                  },
                  child: const Text('Dark Theme'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
