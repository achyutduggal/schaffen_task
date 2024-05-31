import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final String label;

  const TagWidget({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.5, 0.0, 2.5, 0.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.3),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}