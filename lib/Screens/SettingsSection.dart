import 'package:flutter/material.dart';
import 'package:intershiptest/Widgets/CustomSwitchTile.dart';

class SettingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSwitchTile(),
          ListTile(
            leading: Icon(Icons.delete_outline_rounded),
            title: Text('Clear chat'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Encryption'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_rounded, color: const Color(0xffFF3040),),
            title: Text('Exit community', style: TextStyle(color: const Color(0xffFF3040)),),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.thumb_down_alt_outlined, color: const Color(0xffFF3040),),
            title: Text('Report', style: TextStyle(color: const Color(0xffFF3040)),),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
