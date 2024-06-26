import 'package:final_project_team02/ui/holder/inquiry/inquiry_page/inquiry_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingInquiryMenu extends StatelessWidget {
  final String field;
  final String value;

  const SettingInquiryMenu({
    required this.field,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(field),
            Container(
              child: Row(
                children: [
                  Text(
                    value,
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => InquiryPage(),
                      ));
                    },
                    icon: Icon(
                      CupertinoIcons.chevron_right,
                      color: Colors.black,
                      size: 16,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
