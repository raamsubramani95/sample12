import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sampleapp/models/Ranking_object.dart';
import 'package:sampleapp/utils/constants.dart';

import 'screen-2.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1 createState() => new _Screen1();
}

class _Screen1 extends State<Screen1> {
  getrankinglist(){
    setState(() {
      rankinglist.clear();
      String objText = '[{"Position": "Rank 1", "price": "Rs. 10"},{"Position": "Rank 2", "price": "Rs. 8"},{"Position": "Rank 3", "price": "Rs. 6"},{"Position": "Rank 4-10", "price": "Rs. 3"},{"Position": "Rank 10-20", "price": "Rs. 2"}]';
      var datalist=jsonDecode(objText);
      print(datalist);
      for(Map user in datalist){
        rankinglist.add(Ranking.fromJson(user));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getrankinglist();
  }
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
    backgroundColor: Colors.white,
    resizeToAvoidBottomPadding: true,
      bottomNavigationBar: BottomAppBar(
         color: MyColors.primaryColor,
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                new Container(
                    width: 70,
                    height: 65,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          children: [
//                            new Text("ddd"),
                            new Image.asset('assets/images/Group 2723.png',
                              height: 45,
                            ),
                          ],
                        ))),
                new Container(
                    width: 70,
                    height: 65,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          children: [
                            new Image.asset('assets/images/Group 2724.png',
                              height: 45,),
                          ],
                        ))),
                new Container(
                    width: 70,
                    height: 65,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          children: [
                            new Image.asset('assets/images/Group 2730.png',
                              height: 45,),
                          ],
                        ))),
                new Container(
                    width: 70,
                    height: 65,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          children: [
                            new Image.asset('assets/images/Group 2726.png',
                              height: 45,),
                          ],
                        ))),
                new Container(
                    width: 70,
                    height: 65,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          children: [
                            new Image.asset('assets/images/Group 2727.png',
                              height: 45,),
                          ],
                        ))),
              ]
          )),
      body: SingleChildScrollView(
        child:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.softLight),
            ),
          ),
          child:  new Column(
          children: [
            SizedBox(
              height:height*0.02,
            ),
            new Container(
              margin: const EdgeInsets.only(left: 20.0, right: 30.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/arrowback.png",height: 40,),
                  Image.asset("assets/images/abc.png",width: 100,height: 100,),
                  Spacer(),
                  new Column(
                    children: [
                      new Text("SPORTS",style:TextStyle(fontSize:25,color: MyColors.primaryColor,fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 05,
                      ),
                      Image.asset("assets/images/demo.png",width: 100,height: 35,),
                    ],
                  )
                ],
              ),
            ),
            new Container(
                width: width*0.90,
                height: height*0.10,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Group 3.png"),
                    fit: BoxFit.cover,
//                    colorFilter: new ColorFilter.mode(Colors.transparent.withOpacity(0.8), BlendMode.softLight),
                  ),
                ),
              margin: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: new Container(
                  margin: const EdgeInsets.only(left: 30.0, right: 30.0),
                child:  new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(text: 'Prize: ', style: TextStyle(color: MyColors.primaryColor,fontSize: 20,fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Rs. 150', style: TextStyle(color: MyColors.primaryColor, fontWeight: FontWeight.bold,fontSize: 30)),
                      ]),
                    ),
                    Spacer(),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(text: 'Entry:', style: TextStyle(color: MyColors.yellow,fontSize: 18,fontWeight: FontWeight.bold,)),
                            TextSpan(
                                text: 'Rs. 30', style: TextStyle(color: MyColors.yellow, fontWeight: FontWeight.bold,fontSize: 20)),
                          ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        new Text("Life lines: 0",style: TextStyle(color: MyColors.white, fontWeight: FontWeight.bold,fontSize: 15))
                      ],
                    )
                  ],
                )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            new Container(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(text: 'CONDTIONS:', style: TextStyle(color: MyColors.white,fontSize: 17,fontWeight: FontWeight.bold,)),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                new Container(
                  width: width*0.80,
                  child:   new Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",style: TextStyle(color: MyColors.white,fontSize: 15)),
                ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Read All Conditions!',
                    style: TextStyle(
                      color: MyColors.white,fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
            new Container(
              width: width*0.70,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                 Ranking ranking =rankinglist.elementAt(index);
                  return Container(
                      child: index==0?Card(
                     shape: RoundedRectangleBorder(
                         side: new BorderSide(color: Colors.white, width: 2.0),
                     borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                         topRight: Radius.circular(30))),
                          color: MyColors.yellowcard,
                          child:ListTile(
                            title:  new Text(ranking.Position,style: TextStyle(color: MyColors.white,fontSize: 20,)),
                             trailing: new Text(ranking.price,style: TextStyle(color: MyColors.white,fontSize: 20,)),
                            onTap: () {})
                  ):Card(
                          shape:new RoundedRectangleBorder(
                              side: new BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(4.0)),
                          color: MyColors.colors[index],
                          child:ListTile(
                              title:  new Text(ranking.Position,style: TextStyle(color: MyColors.white,fontSize: 20,)),
                              trailing: new Text(ranking.price,style: TextStyle(color: MyColors.white,fontSize: 20,)),
                              onTap: () {})
                      )
                  );
                },
                itemCount: rankinglist.length,
              ) ,
            ),
//            ElevatedButton(
//              child: Text("START GAME"),
//              onPressed: () => print("it's pressed"),
//              style: ElevatedButton.styleFrom(
//                primary: Colors.green,
//                onPrimary: Colors.white,
//                shape: RoundedRectangleBorder(
//                  side: new BorderSide(color: Colors.white, width: 2.0),
//                  borderRadius: BorderRadius.circular(32.0),
//                ),
//              ),
//            )
            SizedBox(
              height: 7,
            ),
            new InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: new Container(
                width: width*0.50,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.green,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: new Center(child: new Text('START GAME', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      )
    ));
  }
}


