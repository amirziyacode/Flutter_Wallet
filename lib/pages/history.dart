import 'package:flutter/material.dart';
import 'package:wallet/animation/fadeanimation.dart';


class historywallet extends StatelessWidget {
  late String images;
  late String title;
  late String day;
  late String time;
  late String money;
  late String postiveornagtive;

  historywallet({required this.images,required this.title,required this.day,required this.postiveornagtive,required this.money,required this.time});



  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he  = MediaQuery.of(context).size.height;


    return FadeAnimation(
      delay: 2,
      child: Container(
        width: we * 0.9,
        height: he * 0.085,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            color: const Color(0xFF282A40)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             CircleAvatar(
              backgroundImage: NetworkImage(images),//""
            ),
            SizedBox(
              width: we * 0.03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(title,style: const TextStyle(color:Colors.white)),
                SizedBox(
                  height: he * 0.01,
                ),
                Row(
                  children:  [
                    Text(time,style: const TextStyle(color:Colors.grey)),
                    SizedBox(width:  we * 0.04,),
                     Text(day,style: const TextStyle(color:Colors.grey)),
                  ],)
              ],
            ),
            SizedBox(
              width:we * 0.16,
            ),
             Text(postiveornagtive,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            Image.asset("images/us-dollar.png",
              width: we * 0.035,
              height: we * 0.035,
              color: Colors.white,
            ),
             Text(money,style: const TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
