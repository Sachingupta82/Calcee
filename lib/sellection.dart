import 'package:flutter/material.dart';

class selector extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 54, 244),
        title: Center(child: Text('Calcee')),
      ), 
      body: Column(children: [
        Row(
          children: [
          ElevatedButton(onPressed: (){}, child: Text('BMI'),
          ),
          ElevatedButton(onPressed: (){}, child: Text('BMI'),),
          ElevatedButton(onPressed: (){}, child: Text('BMI'),),
        ],)
      ],),
      ),
      
    );
  }
}
