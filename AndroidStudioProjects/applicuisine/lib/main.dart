import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/widgets.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'appli',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: myApp(),
      );
  }
}
class myApp extends StatelessWidget{
  @override



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.reorder_outlined,),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 50,
              height: 65,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlueAccent,
                  image: DecorationImage(
                    image: AssetImage(
                      "images/tuxedo.png",
                    ),

                  )
              ),),
          ),
        ],
      ),
      body:
      ListView(
            children: [
              myHomeText(),
              mySearchBar(),
              Padding(
                padding: const EdgeInsets.only(right: 200.0,top: 20.0,bottom: 20.0),
               child:Text(
                 "Recommended",
                 style: TextStyle(
                   fontSize: 18.0,
                 ),
             ),
             ),
               myHorizontalList(),
              myHorizontalListtext(),
              Row(
                  children: [
                myVerticalList(),
                    bouton(),

                  ],

              ),
            ],
    ),
    );

  }

}
class bouton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
        child:Container(
        width: 40,
        height: 40,
        child: Icon(Icons.add, size: 20.0, color: Colors.white),
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.redAccent,
    ),
    ),
    );
  }
}
class myHomeText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Padding(
      padding: const EdgeInsets.only(right: 160.0,top: 20.0,bottom: 20.0),


      child: Text("SEARCH FOR \n RECIPES",
        style: TextStyle(fontWeight: FontWeight.bold,height: 1.5, fontSize:30 ),
        ),
    );
  }
}
class mySearchBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: ListTile(
              leading: Icon(Icons.search, size: 30.0, color: Colors.grey),
              title: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                ),
              ),
            )
        );
  }
}
class myHorizontalList extends StatelessWidget{
  @override
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200.0,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          myHorizontalRecipes('images/burger.png',"Hamburg \n £21",Colors.orange.withOpacity(0.3)),
          myHorizontalRecipes('images/fries.png',"chips \n £15",Colors.blue.withOpacity(0.3)),
          myHorizontalRecipes('images/pizza.png',"pizza \n £25",Colors.green.withOpacity(0.3)),
          myHorizontalRecipes('images/hotdog.png',"hotdog \n £6",Colors.red.withOpacity(0.3)),
          myHorizontalRecipes('images/cheese.png',"cheese \n £25",Colors.purple.withOpacity(0.3)),
        ],
      ),
    );
  }
}
class myHorizontalRecipes extends StatelessWidget{
  final String IName;
  final String PPrice;
  final Color backgroundcolor;
  myHorizontalRecipes(this.IName ,this.PPrice,this.backgroundcolor);


  @override
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200.0,
      child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 150.0,
              decoration: BoxDecoration(
                color: backgroundcolor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child:Column(

                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child:
                        Image.asset(
                            IName,
                            scale: 3.0

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      child:Text(
                        PPrice,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: backgroundcolor,
                        ),
                      ),
                    ),
                  ),
                ] ,
              ),

            ),
          ),
    );
  }
}
class myHorizontalListtext extends StatelessWidget{
  @override

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 15.0,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100.0,
            child: Text("FEATURED",
              style: TextStyle(fontWeight: FontWeight.bold,height: 0.0, fontSize:16.0 ),
              textAlign: TextAlign.center,

            ),

          ),
          Container(
            width: 100.0,
            child: Text("COMBO",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),

            ),

          ),
          Container(
            width: 100.0,
            child: Text("FAVORITE",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Container(
            width: 100.0,
            child: Text("RECOMMENDED",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),

        ],
      ),
    );
  }
}

class myVerticalList extends StatelessWidget{
  @override
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
    height: 300.0,
    width: 300.0,
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        myVerticalText('images/hotdog.png','Delicious hot dog'),
        myVerticalText('images/doughnut.png','Delicious doughnut'),
        myVerticalText('images/hotdog.png','Delicious hot dog'),
        myVerticalText('images/taco.png','Delicious taco'),
        myVerticalText('images/popcorn.png','Delicious popcorn'),
      ],
    ),
      );
  }
}
class stars extends StatelessWidget{
  @override
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, size: 20.0, color: Colors.yellow);

  }
}
class myVerticalText extends StatelessWidget {
  final String IName;
  final String textlist;
  myVerticalText(this.IName ,this.textlist);


  @override
  @override
  Widget build(BuildContext context) {
 return Column(

   children: [

     Row(
       children: [

         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Container(
             width: 80,
             height: 80,
             decoration: BoxDecoration(
               shape: BoxShape.rectangle ,
               borderRadius: BorderRadius.circular(10.0),
               color: Color(0xFFF8D5E1),
             ),
             child:
             Image.asset(
                 IName,
                 scale: 3.0
             ),
           ),
         ),
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,

           children:[
             Text(
               textlist,
               style: TextStyle(fontWeight: FontWeight.bold,height: 0.0, fontSize:13.0 ),

             ),
             Row(
               children: [
                 stars(),
                 stars(),
                 stars(),
                 stars(),
               ],
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [

                 Text("\$6 ",
                   style: TextStyle(
                     color: Colors.redAccent,
                     fontSize: 18,
                   ),
                 ),
                 Text(" \$18",
                   style: TextStyle(
                     color: Colors.grey,
                     fontSize: 14,
                     decoration: TextDecoration.lineThrough,
                   ),
                 ),
               ],
             ),
           ],
         ),],

     ),
   ],
 );
  }
  }