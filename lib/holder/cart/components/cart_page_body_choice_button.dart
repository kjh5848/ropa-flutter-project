import 'package:final_project_team02/holder/main/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../../../_core/constants/theme.dart';


class CartPageBodyChoiceButton extends StatelessWidget {
  const CartPageBodyChoiceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 200,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Colors.grey.shade400, width: 1), // 테두리 설정
          ),
          child: InkWell(
            onTap: () {},
            child: Align(
              child: Text(
                "전체선택", // :TODO 04수정 (오타)
                style: textTheme().titleMedium, // :TODO 04수정
              ),
            ),
          ),
        ),
        Container(
          width: 200,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Colors.grey.shade400, width: 1), // 테두리 설정
          ),
          child: InkWell(
            hoverColor: Colors.red,
            highlightColor: Colors.green,
            onTap: () {},
            child: Align(
              child: Text(
                "선택삭제", //
                style: textTheme().titleMedium, //
              ),
            ),
          ),
        ),
      ],
    );
  }
}