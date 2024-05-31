import 'package:flutter/material.dart';

class CustomSwitchTile extends StatefulWidget {
  @override
  _CustomSwitchTileState createState() => _CustomSwitchTileState();
}

class _CustomSwitchTileState extends State<CustomSwitchTile> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text('Mute notification'),
      value: _isSwitched,
      onChanged: (value) {
        setState(() {
          _isSwitched = value;
        });
      },
      activeTrackColor: Colors.grey[300],
      activeColor: Colors.grey,
      inactiveThumbColor: Colors.grey,
      inactiveTrackColor: Colors.white,
    );
  }
}