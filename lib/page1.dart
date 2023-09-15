import 'package:flutter/material.dart';
import 'page2.dart';

class AnimatedLogoPage extends StatefulWidget {
  @override
  _AnimatedLogoPageState createState() => _AnimatedLogoPageState();
}

class _AnimatedLogoPageState extends State<AnimatedLogoPage> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();

    // Start the blinking animation
    _startBlinking();
  }

  // Function to toggle the visibility of the logo
  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  // Function to start the blinking animation
  void _startBlinking() {
    final blinkingDuration = Duration(seconds: 1); // Blinking duration
    final navigationDelay = Duration(seconds: 1); // Delay before navigation

    // Start blinking after a short delay
    Future.delayed(Duration.zero, () {
      Future.doWhile(() async {
        await Future.delayed(blinkingDuration);
        _toggleVisibility();
        return _isVisible;
      }).then((_) {
        // After blinking, navigate to the next page
        Future.delayed(navigationDelay, () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) =>
                  Page2app(), // Replace 'NextPage' with your next page widget
            ),
          );
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500), // Blinking animation duration
          child: Image.asset(
            'assets/logo.png', // Replace with your JPG file path
            width: 200, // Adjust the width and height as needed
            height: 200,
          ),
        ),
      ),
    );
  }
}

// Replace 'NextPage' with your actual next page widget
