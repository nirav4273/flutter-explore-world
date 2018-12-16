import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget{
  String title;
  String subtitle;
  String image;
  int index;
  CardDesign({this.title,this.subtitle,this.image,this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
      child: GestureDetector(
        onTap: (){
          print("TAP IMAGE $index");
        },
        child: Hero(
          tag: index,
          child: Container(
              height: 220.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2016/07/limestone-rock-phang-nga-1-Beautiful-limestone-rock-in-the-ocean.jpg"),
//                    image: AssetImage("images/$image",),
                      fit: BoxFit.cover
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 5.0
                    )
                  ]
              ),
              child: Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 220.0,
                        width: 80.0,
                        color: Colors.black45,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkResponse(
                              onTap: (){
                                print("CLICK HIGH");
                              },
                              child: Icon(Icons.brightness_high,color: Colors.white,),
                            ),
                            InkResponse(
                              onTap: (){
                                print("CLICK BOOKMARK");
                              },
                              child: Icon(Icons.bookmark_border,color: Colors.white,),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Text(title,style: TextStyle(fontSize: 27.0,fontWeight: FontWeight.w500,color: Colors.white),),
                            ),
                            Container(
                              child: Text(subtitle,style: TextStyle(fontSize: 17.0,color: Colors.white),),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
          ),
        )
      )
    );
  }
}