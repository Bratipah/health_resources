import 'package:flutter/material.dart';

class CommentsLikes extends StatelessWidget {
  const CommentsLikes({Key? key,
    required this.icon1,
    required this.icon2,
    required this.iconText1,
    required this.iconText2,
  })
      : super(key: key);
  final icon1;
  final icon2;
  final iconText1;
  final iconText2;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text.rich(
            TextSpan(
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              children: [
                WidgetSpan(
                  child: Icon(
                    icon1,
                    color: Colors.black26,
                    size: 22,
                  ),
                ),
                TextSpan(
                    text: iconText1,
                  // 'Comments (${article.comments ?? "0"})',
                ),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.black26,
            thickness: 2,
            indent: 0.5,
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              children: [
                WidgetSpan(
                  child: Icon(
                    icon2,
                    // Icons.favorite,
                    color: Colors.blue[900],
                  ),
                ),
                TextSpan(text: iconText2,
                  // 'Likes (${article.likes})'
                  // text:
                  //     "${article.likes?.toString} (4)"
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
