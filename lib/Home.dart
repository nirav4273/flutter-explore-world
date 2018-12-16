import 'package:flutter/material.dart';
import 'CardDesign.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            backColor(context),
            SizedBox(
              height: 45.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                HeaderText(),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context,index){
                      return CardDesign(
                          index:index,
                          title:"Hello ${index+1}",
                          subtitle:"Sub title of ${index+1} the plase",
                          image:"${(index+1).toString()}.jpg"
                      );
                    },
                    itemCount: 10,
                  )
                )
              ],
            ),
            Positioned(
              child: HeaderDesign(),
            )
          ],
        ),
      )
    );
  }

  Widget HeaderText(){
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("EXPLORE",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w900),),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Container(
                    height: 1.0,
                    width: 80.0,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Text("THE WORLD",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w900),),
            SizedBox(height: 20.0,)
          ],
        )
    );
  }

  Widget backColor(BuildContext context){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            color:Color.fromRGBO(255, 180, 57,1.0),
            height: MediaQuery.of(context).size.height-150.0,
            width: MediaQuery.of(context).size.width-100,
          )
        ],
      ),
    );
  }

  Widget HeaderDesign(){
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkResponse(
                onTap: (){},
                child: Material(
                  elevation: 0.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    child: Icon(Icons.menu),
                  ),
                )
            ),
            InkResponse(
                onTap: (){},
                child: Material(
                  elevation: 2.0,
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.white,
                    child: Icon(Icons.search),
                  ),
                )
            ),

          ],
        )
    );
  }
}

