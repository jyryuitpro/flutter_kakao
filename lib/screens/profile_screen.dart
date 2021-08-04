import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/round_icon_button.dart';
import 'package:flutter_kakao/models/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.times,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              print("클릭");
              Navigator.pop(context);
            },
          ),
          actions: [
            RoundIconButton(
              icon: FontAwesomeIcons.gift,
            ),
            SizedBox(width: 15),
            RoundIconButton(
              icon: FontAwesomeIcons.cog,
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
