import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:wallet/animation/fadeanimation.dart';
import 'package:wallet/models/datecard.dart';


class swipercard extends StatelessWidget {
  const swipercard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he  = MediaQuery.of(context).size.height;
    return  FadeAnimation(
      delay: 1.5,
      child: Swiper(
        itemCount: cardinfo.length,
        layout: SwiperLayout.TINDER,
        itemWidth:400,
        itemHeight:  340 ,
        itemBuilder: (c,i){
          return Stack(
            children: <Widget>[
              Column(
                  children: <Widget>[
                    SizedBox(height: he * 0.015),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: cardinfo[i].color,
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter
                            ),
                            boxShadow: [
                              BoxShadow(
                                color:Colors.grey.withOpacity(0.5),
                                blurRadius: 7,
                                offset: const Offset(0,3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(cardinfo[i].name,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                                  SizedBox(
                                    width:we * 0.5 ,
                                  ),
                                  Image.asset(cardinfo[i].icon,
                                    width: we * 0.07,
                                    height: he * 0.07,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: he * 0.03,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 100),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.center,
                                  children:  <Widget>[
                                    const Text("••••",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                                    SizedBox(width: we * 0.04),
                                    const Text("••••",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                                    SizedBox(width: we * 0.04),
                                    const Text("••••",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                                    SizedBox(width: we * 0.04),
                                    const Text("7450",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: he * 0.05,
                              ),
                              Container(
                                  margin: const EdgeInsets.only(right: 200),
                                  child: const Text("Available Balance",style: TextStyle(color: Colors.white),)),
                              SizedBox(
                                  height: he * 0.01
                              ),
                              Row(
                                  children: <Widget>[
                                    Image.asset("images/us-dollar.png",
                                      width: we * 0.06,
                                      height: we * 0.06,
                                      color: Colors.white,
                                    ),
                                    Text(cardinfo[i].money,style: const TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                                    SizedBox(
                                        width: we * 0.45
                                    ),
                                    Image.asset(cardinfo[i].bank,
                                        width: we * 0.09,
                                        height: we * 0.09,
                                        color: Colors.white
                                    )
                                  ]
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ]
              )
            ],
          );
        },
      ),
    );
  }
}
