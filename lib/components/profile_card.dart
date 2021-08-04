import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/user.dart';

class ProfileCard extends StatelessWidget {
  // const ProfileCard({Key? key}) : super(key: key);

  final User user;

  const ProfileCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
            user.backgroundImage,
          ),
        ),
        title: Text(
          user.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          user.intro,
          style: TextStyle(fontSize: 12),
        ),
        // contentPadding: EdgeInsets.all(0),
      ),
    );
  }
}
