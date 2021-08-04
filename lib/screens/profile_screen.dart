import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/bottom_icon_button.dart';
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
        appBar: _buildAppBar(context),
        body: Column(
          children: [
            Spacer(),
            _buildMainStory(),
            user.name == me.name ? _buildMyIcons() : _buildFridendIcons(),
          ],
        ),
      ),
    );
  }

  Column _buildMainStory() {
    return Column(
            children: [
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(user.backgroundImage),
                      fit: BoxFit.cover
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                  user.name,
                  style: TextStyle(color: Colors.white, fontSize: 20)
              ),
              SizedBox(height: 5),
              Text(
                user.intro,
                style: TextStyle(color: Colors.white, fontSize: 15),
                maxLines: 1,
              ),
              SizedBox(height: 20),
              Divider(color: Colors.white),
            ],
          );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
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
      );
  }

  Widget _buildMyIcons() {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomIconButton(
                  icon: FontAwesomeIcons.comment,
                  text: "나와의 채팅",
                ),
                SizedBox(width: 50),
                BottomIconButton(
                  icon: FontAwesomeIcons.pen,
                  text: "프로필 편집",
                ),
              ],
            ),
          );
  }

  Widget _buildFridendIcons() {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomIconButton(
                  icon: FontAwesomeIcons.comment,
                  text: "1:1 채팅",
                ),
                SizedBox(width: 50),
                BottomIconButton(
                  icon: FontAwesomeIcons.phone,
                  text: "통화하기"
                ),
              ],
            ),
          );
  }
}
