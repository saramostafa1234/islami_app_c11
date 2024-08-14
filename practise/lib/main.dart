import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Title",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black, width: 2)),
                padding: EdgeInsets.all(10),
                width: 1000,
                child: Text(
                  "Sara Mostafa",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black, width: 2)),
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                width: 1000,
                child: Text(
                  "Sara Mostafa computerr science Nub i,m interested to meet you help you can playSara Mostafa computerr science Nub i,m interested to meet you help you can play Sara Mostafa computerr science Nub i,m interested to meet you help you can playSara Mostafa computerr science Nub i,m interested to meet you help you can play ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 2)),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  width: 1000,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                          ),
                        ],
                      ),
                      Text(
                        "170 Reviews",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Spacer(),
                    Column(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.green,
                          size: 20,
                        ),
                        Text("Prep", style: TextStyle(color: Colors.white)),
                        Container(
                          height: 15,
                        ),
                        Text("25min", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Icon(
                          Icons.alarm,
                          color: Colors.green,
                          size: 20,
                        ),
                        Text("Clock", style: TextStyle(color: Colors.white)),
                        Container(
                          height: 15,
                        ),
                        Text("1 hr", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Icon(
                          Icons.restaurant,
                          color: Colors.green,
                          size: 20,
                        ),
                        Text("Feed", style: TextStyle(color: Colors.white)),
                        Container(
                          height: 15,
                        ),
                        Text("4-6", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//body:Container(
//child:ListView(
//children: [
//Card(
//color: Colors.blue,
//elevation: 3,
//child: ListTile(
//title: Text("Sara",style: TextStyle(color: Colors.white),),
//onTap: (){
//print("object");
//},
//leading: Text("My Name"),
//subtitle:Text("Mostafa") ,
//trailing: Text("21 age"),
//),
//),
//Card(
//color: Colors.blue,
//elevation: 3,
//child: ListTile(
//title: Text("Sara",style: TextStyle(color: Colors.white)),
//onTap: (){
//print("object");
//},
//leading: Text("My Name"),
//subtitle:Text("Mostafa") ,
//trailing: Text("21 age"),
//),
//),
//Icon(Icons.person,color:Colors. green,),
//IconButton(onPressed: (){
//print ("sara");
//}
//icon: Icon(Icons.star,),),
//],
//)