import 'package:flutter/material.dart';
import 'package:flutter_kakao/models/user.dart';

class ProfileScreen extends StatelessWidget {
  // const ProfileScreen({Key? key}) : super(key: key);

  final User user;

  const ProfileScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
