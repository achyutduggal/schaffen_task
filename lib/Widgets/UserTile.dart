import 'package:flutter/material.dart';

class UserTile extends StatefulWidget {
  @override
  _UserTileState createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  bool isFollowing = false;

  void toggleFollow() {
    setState(() {
      isFollowing = !isFollowing;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage('images/img2.png'),
      ),
      title: const Text('Yashika'),
      subtitle: const Text('29, India'),
      trailing: SizedBox(
        width: 110.0,
        child: ElevatedButton(
          onPressed: toggleFollow,
          style: ElevatedButton.styleFrom(
            primary: isFollowing ? Colors.grey : const Color(0xffEF456F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(isFollowing ? 'Following' : 'Add', style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
