import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtendMenu extends StatelessWidget {
  const ExtendMenu
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2,
          child: Stack(children: <Widget>[
           Container(
             height: size.height * 0.2 - 27,
             decoration: BoxDecoration(color: Colors.deepPurple,
             borderRadius: BorderRadius.only(
               bottomLeft: Radius.circular(36),
               bottomRight: Radius.circular(36),
             )),
           )
          ],),
        )
      ]
    );
  }
}