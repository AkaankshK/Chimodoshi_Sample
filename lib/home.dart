import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List images=[
  'assets/images/hygenicfood.jpg',
  'assets/images/lactation.jpg',
  'assets/images/humanhealer.jpg',
  'assets/images/washroom.jpg',
  'assets/images/chillpill.jpg',
  'assets/images/carcrash.jpg',
  'assets/images/backpack.jpg',
];

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  final PageController _pageCtrl = PageController(viewportFraction: 0.6);
  double currentPage=0.0;
  @override
  void initState() {
    _pageCtrl.addListener((){
      setState(() {
        currentPage=_pageCtrl.page;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(10.0), child: Text("What we offer",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.cyan
            ),
          )),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("Our Services",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600
              ),),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Align(
              alignment: Alignment.center,
              child: Text("Whether it’s a medical emergency, need of restrooms or restaurant or any transport related issues or any other emergency we are here for you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15.0
                ),
              ),
            ),
          ),
          Divider(
            height: 15,
          ),
          Container(
            height: 250.0,
            color: Colors.transparent,
            child: PageView.builder(
              controller: _pageCtrl,
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, int currentIdx){
                return AlbumCard(
                color: Colors.accents[currentIdx],
                  currentIdx: currentIdx,
                  currentPage: currentPage,
                );
              },
            ),
          )
        ],
      ),


    );
  }
}

class AlbumCard extends StatelessWidget {
  final Color color;
  final int currentIdx;
  final double currentPage;
  AlbumCard({this.color, this.currentIdx, this.currentPage});

  @override
  Widget build(BuildContext context) {
    double relativePosition= currentIdx-currentPage;
    return Container(
      width: 250.0,

      child: Transform(
        transform: Matrix4.identity()
        ..setEntry(3, 2,0.003)
        ..scale(1-relativePosition.abs().clamp(0.2, 0.6)+ 0.4)
        ..rotateY(relativePosition),
        alignment: relativePosition >= 0
        ? Alignment.centerLeft : Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(top: 20,bottom: 20, left: 5 , right: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1
            ),
            borderRadius: BorderRadius.circular(12),
            color: color,
            image: DecorationImage(

            image: AssetImage(images[currentIdx]),
              fit: BoxFit.fill


            )
          ),
        ),
      ),
    );
  }
}

