import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:sampleapp/models/Ranking_object.dart';
import 'package:sampleapp/utils/constants.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2 createState() => new _Screen2();
}

class _Screen2 extends State<Screen2> {
  bool _switchValue=false;
  getgamelist(){
    setState(() {
      gamelist.clear();
      String objText = '[{"Name": "SPORTS", "Image": "Group 232.png"},{"Name": "HISTORY", "Image": "Group 1.png"},{"Name": "SCIENCE", "Image": "Group 233.png"},{"Name": "MOVIE", "Image": "Group 1 12313.png"}]';
      var datalist=jsonDecode(objText);
      print(datalist);
      for(Map user in datalist){
        gamelist.add(Game.fromJson(user));
      }
    });
  }
  getpricelist(){
    setState(() {
      pricedatalist.clear();
      String objText = '[{"Price": "Rs. 50", "Entry": "Rs. 20"},{"Price": "Rs. 150", "Entry": "Rs. 30"},{"Price": "Rs. 350", "Entry": "Rs. 45"},{"Price": "Rs. 550", "Entry": "Rs. 75"}]';
      var datalist=jsonDecode(objText);
      print(datalist);
      for(Map user in datalist){
        pricedatalist.add(Pricedata.fromJson(user));
      }
    });
  }
  @override
  void initState() {
    super.initState();
    getgamelist();
    getpricelist();
  }
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    // TODO: implement build
    return  Scaffold(
            backgroundColor: Colors.transparent,
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
                    image: AssetImage("assets/images/bg1.png"),
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.softLight),
                  ),
                ),
                child: new Column(
                children: [
                  SizedBox(
                    height:height*0.01,
                  ),
                  new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 30.0),
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        new Card(
                          shape: RoundedRectangleBorder(
                              side: new BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          color:MyColors.white,
                          child: Icon(Icons.menu_rounded,color: MyColors.blue,size: 35,),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:
                    CircleAvatar(
                      radius: MediaQuery.of(context).size.width *0.05+0.05,
                      backgroundColor: Colors.blue,
                      child:ClipOval(
                          child:new SizedBox(
                            width: 37.0,
                            height: 37.0,
                            child:FadeInImage.assetNetwork(
                              fit: BoxFit.cover,
                              placeholder: "https://sledgehealth-virtual-officce-dev.s3.amazonaws.com/vdodoc/default_role.png",
                              image:"https://sledgehealth-virtual-officce-dev.s3.amazonaws.com/vdodoc/default_role.png",
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ))),
                        SizedBox(
                          width: 15,
                        ),
                        new Column(
                          children: [
                            new Text("John Doe",style:TextStyle(fontSize:11,color: MyColors.white,fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 7,
                            ),
                        new Row(
                          children: [
                            Image.asset("assets/images/star.png",width: 20,height: 20,),
                            SizedBox(
                              width: 10,
                            ),
                            Text("10", style: TextStyle(inherit: true, fontSize: 15.0, color: MyColors.primaryColor,
                              shadows: [
                                Shadow( // bottomLeft
                                    offset: Offset(-1.1, -1.1),
                                    color: Colors.white
                                ),
                                Shadow( // bottomRight
                                    offset: Offset(1.1, -1.1),
                                    color: Colors.white
                                ),
                                Shadow( // topRight
                                    offset: Offset(1.1, 1.1),
                                    color: Colors.white
                                ),
                                Shadow( // topLeft
                                    offset: Offset(-1.1, 1.1),
                                    color: Colors.white
                                ),
                              ],
                            ),
                            )
                          ],
                        ),

                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        new Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            new Text("Cash Mode",style:TextStyle(fontSize:11,color: MyColors.white,fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 01,
                            ),
                            new RotatedBox(
                                quarterTurns: 1,
                                child: Transform.scale(
                                  scale: 0.8,
                                  child: CupertinoSwitch(
                                    value: _switchValue,
                                    activeColor: MyColors.primaryColor,
                                    trackColor: Colors.white24,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _switchValue = value;
                                      });
                                    },
                                  ),
                                )
                            ),
                            new Text("Free Mode",style:TextStyle(fontSize:11,color: Colors.white60)),
                          ],
                        ),

                        Spacer(),
                        new Container(
                            width: width*0.30,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Group 204.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child:   new Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                child: new Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(text: 'Rs. ', style: TextStyle(color: MyColors.primaryColor,fontSize: 10,fontWeight: FontWeight.bold,)),
                                      TextSpan(
                                          text: '2456', style: TextStyle(color: MyColors.primaryColor, fontWeight: FontWeight.bold,fontSize: 13)),
                                    ]),
                                  ),
                        ])))
                       ],
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 30.0),
                    child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
//                        Icon(Icons.arrow_back_ios),
                        Image.asset("assets/images/arrowback.png",height: 50,),
                        Image.asset("assets/images/abc.png",width: 150,height: 150,),
                        Image.asset("assets/images/arrownforward.png",height: 40,),
//                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                    height:  MediaQuery.of(context).size.height * 0.22,
                    child: ListView.builder(
//                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        Game game = gamelist.elementAt(index);
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.04,
                            child: Card(
                                clipBehavior: Clip.antiAlias,
                                shape:new RoundedRectangleBorder(
                                    side: new BorderSide(color: Colors.transparent, width: 2.0),
                                    borderRadius: BorderRadius.circular(30.0)),
                                color:MyColors.cardbg,
                                child:new Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/cardbg.png"),
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  child: new Column(
//                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height:MediaQuery.of(context).size.height * 0.01),
                                      Image.asset("assets/images/"+game.Image,width: 79,height: 70,),
                                        SizedBox(height:MediaQuery.of(context).size.height * 0.06),
                                        new Container(
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          height: MediaQuery.of(context).size.height * 0.05,
                                            margin: EdgeInsets.only(top: 6),
                                          child:
                                          index==0?
                                          new Card(
//                                            shape:new RoundedRectangleBorder(
//                                                borderRadius: BorderRadius.circular(10.0)),
                                            elevation: 0,
                                            color:MyColors.yellowcard,
                                            child:new Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                new Text(game.Name,style:TextStyle(fontSize:11,color: MyColors.primaryColor,fontWeight: FontWeight.bold))
                                              ],
                                            ),
                                          ):new Card(
                                            shape:new RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.0)),
                                            elevation: 0,
                                            color:MyColors.primaryColor,
                                            child:new Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                new Text(game.Name,style:TextStyle(fontSize:11,color: MyColors.white,fontWeight: FontWeight.bold))
                                              ],
                                            ),
                                          )
                                        )

                                    ],
                                  )
                                )
                            )
                        );
                      },
                      itemCount: gamelist.length,
                    ) ,
                  ),
              Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  border: Border.all( color: Colors.lightBlueAccent, width: 4.0),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: FlutterToggleTab(
                    width: 90,
                    borderRadius: 30,
                    height: 50,
                    initialIndex:0,
                    selectedBackgroundColors: [Colors.red],
                    selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                    unSelectedTextStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    labels: ["SOLO", "VERSES", "TABLE"],
                    selectedLabelIndex: (index) {
                      print("Selected Index $index");
                    },
                  )),

                  new Container(
                    width: width*1,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        Pricedata pricedata =pricedatalist.elementAt(index);
                        return new Container(
                          width: width*0.90,
                          height: height*0.12,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/Group 3.png"),
                              fit: BoxFit.fitHeight,
//                    colorFilter: new ColorFilter.mode(Colors.transparent.withOpacity(0.8), BlendMode.softLight),
                            ),
                          ),
                          margin: const EdgeInsets.only(left: 30.0, right: 30.0,top: 10),
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
                                          text: pricedata.Price, style: TextStyle(color: MyColors.primaryColor, fontWeight: FontWeight.bold,fontSize: 30)),
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
                                              text: pricedata.Entry, style: TextStyle(color: MyColors.yellow, fontWeight: FontWeight.bold,fontSize: 20)),
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
                        );
                      },
                      itemCount: pricedatalist.length,
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
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            )
        ));
  }
}


