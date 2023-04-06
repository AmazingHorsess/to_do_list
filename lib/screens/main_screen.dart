import 'package:flutter/material.dart';
import 'package:to_do_list/constants/colors.dart';

class Home extends StatelessWidget{
  const Home ({Key? key}) :super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdBGColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu, color: tdBlack, size: 35,
            ),
            Container(
              height: 40,
              width: 40,
              child: const Icon(Icons.supervised_user_circle_rounded, color: tdGrey, size: 35,),
            )

          ],
        ),

      ),
      body: Container(
        child: Text("check"),
      ),
    );
  }



}


