
import 'utils/Sqlite/db_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cups/menu_widget/menu_widget.dart';
import 'utils/cups_Nav/Nav_pg.dart';




class Home extends StatefulWidget{

  @override 
  _HomeState createState() => _HomeState();
  }
  
  class _HomeState extends State<Home> {
    final PageController _pageController = PageController(initialPage: 0);
    final int numPages =3 ;
     int _currentPage =0;
    
        @override 
        Widget build(BuildContext context) {
          return Scaffold( 
    body: AnnotatedRegion(
      value:SystemUiOverlayStyle.light,
    child: Container(
      decoration:BoxDecoration(
        gradient:LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1,0.4,0.7,0.9],
          colors: [
            Color(0xFFFFE082),
            Color(0xFFFFCA28),
            Color(0xFFFFB300),
            Color(0xFFFF8F00),
          ],

        ),
         ),
         child: Padding(
           padding: EdgeInsets.symmetric(vertical: 40),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               
              Container(
                height: 600.0,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page){
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child:Image(
                          image: AssetImage(
                            'assets/images/cafe.png',
                          ),
                           height: 300.0,
                          width: 300.0,
                          ),
                         
                         )
                    ]
                    
                 ),
                  
              
                ] 
                )
              ),
               Container(
                 alignment: Alignment.center,
                 child: RaisedButton(
                   onPressed: ()=> MyNavigator.goToMenu(context),
                   child: Text(
                     'Guest',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 20.0,
                     ),
                   ),),
               ),

                Container(
                 alignment: Alignment.center,
                 child: RaisedButton(
                   onPressed: ()=> MyNavigator.goToDB(context) ,
                   child: Text(
                     'Admin',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 20.0,
                     ),
                   ),),
               ),
             ],

           ),
         ),
    )
  ),
          );
}
  }
  