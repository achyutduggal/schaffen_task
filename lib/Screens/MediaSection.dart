import 'package:flutter/material.dart';

class MediaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Media, docs and links',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MediaItem(),
                MediaItem(),
                MediaItem(),
                MediaItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MediaItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      width: 100,
      height: 100,
      color: Colors.grey[300],
      child: Image.asset('images/img3.png', fit: BoxFit.cover),
    );
  }
}
