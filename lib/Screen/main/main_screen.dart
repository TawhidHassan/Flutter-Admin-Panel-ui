
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../Components/side_menu.dart';
import '../../Controller/MenuController.dart';
import '../../ResponsiveFun/responsive.dart';
import '../Dashboard/dashboard_screen.dart';



class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
                // child: Container(
                //   height: 400,
                //   color: Colors.redAccent,
                // ),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
              // child: Container(
              //   height: 400,
              //   color: Colors.greenAccent,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
