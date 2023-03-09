import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailsEventScreenOrg extends StatefulWidget {
  const DetailsEventScreenOrg({super.key});

  @override
  State<DetailsEventScreenOrg> createState() => _DetailsEventScreenOrgState();
}

class _DetailsEventScreenOrgState extends State<DetailsEventScreenOrg> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SlidingUpPanel(
        
        header: Container(
          width: _width,
          height: 30,
          color: Colors.green),
        minHeight: _height * 0.3,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30) ),
        panel: Column(
          children: [

          ],
        )
      ),
    );
  }
}