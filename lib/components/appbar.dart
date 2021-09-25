import 'package:HuntandRent/components/sidebar.dart';
import 'package:HuntandRent/screen/login.dart';
import 'package:HuntandRent/screen/tabBarscreens.dart';
import 'package:HuntandRent/widgets/CustomMessage.dart';
import 'package:HuntandRent/widgets/shared.dart';
import "package:flutter/material.dart";

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  //  final AppBar appBar;
  logout() {}

  @override
  Size get preferredSize => new Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // bottom: null,
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.topLeft,
                child: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(
                      'images/hrlogo.jpeg',
                    ))),
          ],
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  // begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  colors: <Color>[
                Color(0xFFFFF1A5),
                Color(0xFFFFF1A5),
                Color(0xFFBD9D02),
              ])),
        ),
        // title: Text("GeeksforGeeks"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: Icon(Icons.mic),
            color: Colors.black,
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.supervised_user_circle),
            tooltip: 'Setting Icon',
            color: Colors.black,
            onPressed: () {},
          ), //IconButton
        ],
        //<Widget>[]

        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(
              Icons.menu,
              color: Color(0xff9B019B),
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ), //AppBar
    );
    //Scaffold
  }
}

class createBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},

        showUnselectedLabels: false,
        // backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,

        selectedIconTheme: IconThemeData(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xffFAD72C),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Color(0xffFAD72C),
              ),
              label: '',
              tooltip: 'cart items'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
              color: Color(0xffFAD72C),
            ),
            // icon: ImageIcon(
            //   AssetImage('')
            // ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Color(0xffFAD72C),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () async {
               if (await SharedData().logout()) {
                    CustomMessage.toast('Successfully Logout...!!!!');
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                        (route) => false);
                  } else {
                    CustomMessage.toast(
                      'Error while logout..!! Please try again..!!',
                    );
                  }
              },
              child: Icon(
                Icons.logout,
                color: Color(0xffFAD72C),
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
