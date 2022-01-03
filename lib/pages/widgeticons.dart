import 'package:flutter/material.dart';
import 'package:wallet/animation/fadeanimation.dart';

class iconswidget extends StatelessWidget {
  late String title;
  late Widget child;
  late double delayanimation;
  late Color color;

  iconswidget({required this.title,required this.child,required this.color,required this.delayanimation});


  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he  = MediaQuery.of(context).size.height;

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(
              delay: delayanimation,
              child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color:  color, // 0xFF17334E
                      borderRadius: BorderRadius.circular(40.0)
                  ),
                  child:child
              ),
            ),
          ],
        ),
        SizedBox(
          height:  he * 0.01,
        ),
        FadeAnimation(
          delay: delayanimation,
            child: Text(title,style: const TextStyle(color: Colors.grey),
            )),
      ],
    );
  }
}
