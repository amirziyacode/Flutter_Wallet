import 'package:flutter/material.dart';


class boottomnavigationBar extends StatelessWidget {
  const boottomnavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he  = MediaQuery.of(context).size.height;
    return  Container(
      width: 100,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          IconButton(onPressed: (){}, icon: const Icon(Icons.home,color: Color(0xFFED648C),size: 30,)),
          SizedBox(
            width: we * 0.06,
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.insert_chart,color: Colors.grey,size: 30)),
          SizedBox(
            width: we * 0.06,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFED648C)
            ),

            child: IconButton(onPressed: (){}, icon: const Icon(Icons.qr_code_scanner,color: Colors.white,size: 30)),
          ),
          SizedBox(
            width: we * 0.06,
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.account_balance_wallet,color: Colors.grey,size: 30)),
          SizedBox(
            width: we * 0.06,
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings,color: Colors.grey,size: 30)),
        ],
      ),
    );
  }
}
