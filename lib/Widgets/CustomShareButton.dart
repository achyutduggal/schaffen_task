import 'package:flutter/material.dart';

class CustomShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffC32422), // Red background color
        border: Border.all(
          color: Colors.white, // White border color
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0), // Rounded corners
      ),
      child: IconButton(
        icon: Icon(Icons.share),
        color: Colors.white, // White icon color
        onPressed: () {
          // Handle the button press
        },
      ),
    );
  }
}