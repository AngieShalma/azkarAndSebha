// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'azkar.dart';

import 'listOfAzkar.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children:[
          ...listhome.map((Item) => GestureDetector(
            child:Container(alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              decoration: BoxDecoration(color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(Item["Buttom-name"],textAlign:TextAlign.center,
                style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,),),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context){
                return  askar(text: Item["Buttom-name"],askar_navegator:Item["azkar_list"],);
              }));
            },
          ),),

        ] );
  }
}
