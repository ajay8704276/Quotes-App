import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotes_app/common/theme_text.dart';

class QuotesWidget extends StatelessWidget {
  final Color backgroundColor;

  final String quote, author;

  const QuotesWidget({
    Key key,
    @required this.backgroundColor,
    @required this.quote,
    @required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 350, height: 660);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 30,right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/quotes_image.png",
              width: ScreenUtil().setWidth(50),
              height: ScreenUtil().setHeight(50),
              color: Colors.white,
            ),
            Text(
              quote,
              style: ThemeText.headline,
            ),
            SizedBox(height: 20,),
            Text(
              author,
              style: ThemeText.subhead,
            )
          ],
        ),
      ),
    );
  }
}
