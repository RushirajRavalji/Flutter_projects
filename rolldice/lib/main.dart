import 'package:flutter/material.dart'; // Importing the Flutter Material library for UI components
import 'gradient_container.dart'; // Importing the custom GradientContainer widget

void main() {
  runApp(
    // Entry point of the Flutter app
    MaterialApp(
      // Wraps the app with Material Design features
      home: Scaffold(
        // Provides a basic visual layout structure
        body:
            GradiendContainer(), // Sets GradientContainer as the main content of the app
      ),
    ),
  );
}
