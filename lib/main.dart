import 'package:flutter/material.dart';

void main() {
  runApp(const basketball());
}

class basketball extends StatelessWidget {
  const basketball({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: basket(),
    );
  }
}


class basket extends StatefulWidget {
  const basket({super.key});
  @override
  State<basket> createState() => _basketState();
}

class _basketState extends State<basket> {
  int pointteama = 0 ;
  int pointteamb = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal,
        title:Text("Points Counter"),
        ),
      body:Column(
        mainAxisAlignment:MainAxisAlignment.spaceAround,
        children: [
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [ 
          Column(children: [
            Text("Team A",style:TextStyle(fontSize:32,color:Colors.red),),
            Text("$pointteama",style:TextStyle(fontSize:160),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed:(){
                setState(() {
                  pointteama++ ;
                });
              }, 
              child: Text("Add 1 Point",style:TextStyle(color:Colors.black,fontSize:15),),
              ), 
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed:(){
                setState(() {
                  pointteama += 2 ;
                });
              }, 
              child: Text("Add 2 Point",style:TextStyle(color:Colors.black,fontSize:15),),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed:(){
                setState(() {
                  pointteama += 3 ;
                });
              }, 
              child: Text("Add 3 Point",style:TextStyle(color:Colors.black,fontSize:15),),
              ),
          ],),
         
          Container(
            height: 500,
            child: VerticalDivider(
              thickness: 1,
              color:Colors.grey,
              indent:30,
              endIndent:30,            
            ),
          ),
          Column(children: [
            Text("Team B",style:TextStyle(fontSize:32,color: Colors.red),),
            Text("$pointteamb",style:TextStyle(fontSize:160),),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed:(){
                setState(() {
                  pointteamb++ ;
                });
              }, 
              child: Text("Add 1 Point",style:TextStyle(color:Colors.black,fontSize:15),),
              ),
             ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed:(){
                setState(() {
                  pointteamb += 2 ;
                });
              }, 
              child: Text("Add 2 Point",style:TextStyle(color:Colors.black,fontSize:15),),
              ),
              ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed:(){
                setState(() {
                  pointteamb += 3 ;
                });
              }, 
              child: Text("Add 3 Point",style:TextStyle(color:Colors.black,fontSize:15),),
              ),
          ],),
        ],),
        ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
              onPressed:(){
                setState(() {
                  pointteama = 0 ;
                  pointteamb = 0 ;
                });
              }, 
              child: Text("Reset",style:TextStyle(color:Colors.black,fontSize:15),),
              ),
      ]),  
    );
  }
}