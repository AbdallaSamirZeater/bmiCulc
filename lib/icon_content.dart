import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
   
   IconContent({this.genIcon,this.gentext});
   final IconData genIcon ;
   final String gentext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genIcon,
          size:80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gentext,
          style:kLableStyle,
        )
      ],
      
    );
  }
}
