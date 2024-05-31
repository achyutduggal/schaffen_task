import 'package:flutter/material.dart';
import 'package:intershiptest/Widgets/TagWidget.dart';

class TagsSection extends StatelessWidget {
  final List<String> tags = [
    'Outdoor',
    'Outdoor',
    'Outdoor',
    'Outdoor',
    'Outdoor',
    '+1'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 32.0, // Adjust the height to fit the tags
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TagWidget(label: 'Outdoor'),
              TagWidget(label: 'Outdoor'),
              TagWidget(label: 'Outdoor'),
              TagWidget(label: 'Outdoor'),
              TagWidget(label: '+1'),
            ],
          ),
        )
      ),
    );
  }
}
