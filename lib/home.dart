import 'package:flutter/material.dart';
import 'package:wallet/animation/fadeanimation.dart';
import 'package:wallet/pages/bottomnavigation.dart';
import 'package:wallet/pages/cards.dart';
import 'package:wallet/pages/history.dart';
import 'package:wallet/pages/widgeticons.dart';



class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he  = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF181B2A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181B2A),
        elevation: 0,
        actions: [
           // custom appBar with animation ....
          FadeAnimation(
            delay: 1,
            child: Row(
              children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Welcome back",style: TextStyle(color: Colors.grey),),
                  Text("Amirziya",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(left: 200,right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF272A3F)
                  ),
                  child: const Icon(Icons.person_outlined,color: Colors.white,)
              )
            ],),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: we,
            height: he,
            child: Column(
              children: <Widget>[
                const swipercard(), // cards ..
                // Icons custom button //
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    iconswidget(
                        title: "Send",
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.send),color: Colors.blue,),
                        color: const Color(0xFF17334E),
                        delayanimation: 1.5
                    ),
                    SizedBox(
                      width: we * 0.03,
                    ),
                    iconswidget(
                        title: "Pay",
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.payments),color: Colors.red,),
                        color: const Color(0xFF411C2E),
                        delayanimation: 1.7
                    ),
                    SizedBox(
                      width: we * 0.03,
                    ),
                    iconswidget(
                        title: "withdraw",
                        child: IconButton(onPressed: (){}, icon:
                        Image.asset("images/icons8-cash-withdrawal-96.png",
                          width: we * 0.08,
                          height: we * 0.08,
                          color: Colors.green,
                        ) ,),
                        color: const Color(0xFF163333),
                        delayanimation: 1.9
                    ),
                    SizedBox(
                      width: we * 0.03
                    ),
                    iconswidget(
                        title: "Bill",
                        child: IconButton(onPressed: (){}, icon: const Icon(Icons.receipt),color: Colors.purple,),
                        color: const Color(0xFF32204D),
                        delayanimation: 2.1
                    ),
                    SizedBox(
                      width: we * 0.03,
                    ),
                    iconswidget(
                        title: "voucher",
                        child: IconButton(onPressed: (){}, icon: Image.asset("images/icons8-voucher-96.png"
                          ,width: we * 0.08,
                          height: he * 0.08,
                          color: Colors.orange,
                        ),color: Colors.purple,),
                        color: const Color(0xFF412D27),
                        delayanimation: 2.3
                    ),
                  ],
                ),
                SizedBox(
                  height: he * 0.05,
                ),

                // histories from wallet  ..  //
                historywallet(
                    images: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Spotify_icon.svg/1982px-Spotify_icon.svg.png",
                    title: "Spotify Subscription",
                    day: "21Jun 2021",
                    postiveornagtive: "-",
                    money: "11.90",
                    time: "12:01 am"),
                SizedBox(
                  height: he * 0.02,
                ),
                historywallet(
                    images: "https://seeklogo.com/images/P/pinterest-logo-CA98998DCB-seeklogo.com.png",
                    title: "Pinterest Salary",
                    day: "20Jun 2021",
                    postiveornagtive: "+",
                    money: "63.0",
                    time: "09:0 pm"),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const boottomnavigationBar() // bottomNavigationBar custom...
    );
  }
}




