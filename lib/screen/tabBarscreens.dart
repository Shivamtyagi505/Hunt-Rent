// import 'package:HuntandRent/components/appbar.dart';
import 'package:HuntandRent/components/appbar.dart';
import 'package:flutter/material.dart';
import '../components/tab.dart';

import 'mywishlist.dart';
class TabBarview extends StatefulWidget {
  @override
  _TabBarviewState createState() => _TabBarviewState();
}

class _TabBarviewState extends State<TabBarview> with SingleTickerProviderStateMixin{

 late TabController _tabcontroller;
int currentIndex=0;
@override
  void initState() {
   
    super.initState();
    _tabcontroller=TabController(length: 3, vsync: this);
    _tabcontroller.addListener(() {
      if(!_tabcontroller.indexIsChanging){
        setState(() {
          currentIndex=_tabcontroller.index;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar:MyAppbar(),
        body: Column(
                  children: [

                    Container(
            height: 43,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    // begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    colors: <Color>[
                  Color(0xFFBD9D02),
                  Color(0xFFFFF1A5),
                  Color(0xFFFFF1A5),
                ])),
            //  color: Colors.black,
            alignment: Alignment.center,

            child: Text(
              'MY ORDER',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff450808)),
            ),
          ),
        Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
              SizedBox(height: 10.0),
              TabBar(controller: _tabcontroller,
              indicator:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
),
              indicatorColor: Colors.white,
              tabs: Tabs.tab.map((e)=>Container(
                
                height: 45,
                width: MediaQuery.of(context).size.width,
              decoration:BoxDecoration(
                boxShadow:currentIndex==e.tabindex?[BoxShadow(color: Colors.grey,blurRadius: 5,offset:Offset(2, 2))]:[],
                 borderRadius: BorderRadius.circular(10),
                 color:currentIndex==e.tabindex?Colors.white:Color(0xffDDBF24)
               ),
               child: Tab(
                child: Text(e.tabtitle,style: TextStyle(color:currentIndex==e.tabindex?Colors.black:Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
               ),
               )).toList(),
              ),

             //   DefaultTabController(
              //   length: 3, // length of tabs
              //   initialIndex: 0,
              //   child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
              //     Container(
              //      child: TabBar(
              //        labelColor: Colors.black,
              //         unselectedLabelColor: Colors.white,
              //          indicator: BoxDecoration(
              //        color: Colors.black,  
              //       gradient: LinearGradient(
                      
              //           colors: [Colors.black, Colors.black,]),
              //       borderRadius: BorderRadius.circular(40),
              //       ),
              //         tabs: [
              //           Container(
              //             decoration: BoxDecoration(

              //             color: Color(0xffDDBF24), 
              //               borderRadius: BorderRadius.circular(40),
              //             ),
              //             width: 100,
              //             child: Tab(text: 'ON GOING',)),
              //                    Container(
              //             decoration: BoxDecoration(

              //             color: Color(0xffDDBF24), 
              //               borderRadius: BorderRadius.circular(40),
              //             ),
              //             width: 100,
              //             child: Tab(text: 'HISTORY',)),       Container(
              //             decoration: BoxDecoration(

              //             color: Color(0xffDDBF24), 
              //               borderRadius: BorderRadius.circular(40),
              //             ),
              //             width: 100,
              //             child: Tab(text: 'DRAFT',)),
                  
                     
              //         ],
              //       ),
              //     ),
              //     Container(
              //       height: 400, //height of TabBarView
              //       decoration: BoxDecoration(
              //         border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
              //       ),
              //       child: TabBarView(children: <Widget>[
              //        orderCard()
              //         ,
              //         Container(
              //           child: Center(
              //             child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              //           ),
              //         ),
              //         Container(
              //           child: Center(
              //             child: Text('Display Tab 3', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              //           ),
              //         ),
                    
              //       ])
              //     )
              //   ])
              // ),
            ]),
        ),
 Expanded(
    child: SingleChildScrollView(
     scrollDirection: Axis.vertical,
     child:ConstrainedBox(constraints:BoxConstraints(
       maxHeight:MediaQuery.of(context).size.height,
     ),
     child: Container(
                child: TabBarView(
                  children:<Widget>[
                    orderCard(),
                    orderCard(),orderCard(),
                  ]
                ),
              
            ),
     ),
      
   ),
 ),
      ],
        ),
       
       bottomNavigationBar: createBottomNavigationBar(), ),
    );
  
  }
}