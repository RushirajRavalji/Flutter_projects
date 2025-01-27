// Importing the Material Design library from Flutter to access widgets and themes.
import 'package:flutter/material.dart';
// Importing the Keys widget from the keys.dart file for use in the app.
import 'package:flutter_internals/keys/keys.dart';

// Purpose:
// The main.dart file serves as the entry point for the Flutter application. It initializes the app and specifies the root widget (App) that defines the main structure and theme of the application.

// Flow:
// App Entry: main() → runApp(App)

// main() function:
// - The Flutter app starts execution here.
// - The runApp function initializes the app and takes the App widget as its argument to start building the widget tree.

void main() {
  // runApp initializes the application and starts the widget tree with the given widget.
  runApp(const App());
}

// App Widget:
// - A StatelessWidget that represents the top-level structure of the app.
// - Sets up a MaterialApp:
//   - Defines the theme using Material 3.
//   - Specifies the home screen of the app, which is a Scaffold widget.

class App extends StatelessWidget {
  // The constructor for the App widget, marked as constant for performance optimization.
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp provides a material design framework for the application.
    return MaterialApp(
      // Setting the theme of the application to use Material 3 design principles.
      theme: ThemeData(useMaterial3: true),
      // Defining the home screen of the app, which consists of an AppB ar and a body.
      home: Scaffold(
        // AppBar provides a consistent header across the app.
        appBar: AppBar(
          // The title of the AppBar, displayed as "Flutter Internals".
          title: const Text('Flutter Internals'),
        ),
        // The main content of the app is the Keys widget, displayed in the body of the Scaffold.
        body: const Keys(),
      ),
    );
  }
}

// Flow Summary:
// - App Structure:
//   App → MaterialApp → Scaffold → Keys widget
// - UI Components:
//   - AppBar: Title "Flutter Internals"
//   - Body: Keys widget
