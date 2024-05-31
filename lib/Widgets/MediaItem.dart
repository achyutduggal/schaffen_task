import 'package:flutter/material.dart';

class MediaItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      width: 100,
      height: 100,
      color: Colors.grey[300],
      child: Image.network('https://example.com/image.jpg', fit: BoxFit.cover),
    );
  }
}