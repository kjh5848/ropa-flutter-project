import 'package:final_project_team02/data/dtos/user_req.dart';
import 'package:final_project_team02/ui/holder/my_page/pages/profile/profile_viewmodel.dart';
import 'package:final_project_team02/ui/holder/my_page/pages/user/user_my_page.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final UserProfileModel model;

  const BottomButton({
    required this.text,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Photo photo = Photo(name: model.fileName, base64: model.prevImg);
          UserProfileUpdateDTO reqDTO = UserProfileUpdateDTO(
            myName: model.userProfile.myName,
            nickName: model.newNickName,
            mobile: model.newMobile,
            password: model.newPassword,
            photo: photo,
          );

          Navigator.pop(
              context, MaterialPageRoute(builder: (context) => UserMyPage()));
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black87,
          padding: EdgeInsets.symmetric(vertical: 5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
