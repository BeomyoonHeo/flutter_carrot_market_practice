import 'package:carrot_market_ui/models/neighborhood_life.dart';
import 'package:carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:carrot_market_ui/screens/neighborhood_life/components/life_body.dart';
import 'package:carrot_market_ui/screens/neighborhood_life/components/life_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          '동네생활',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.plus_rectangle_on_rectangle,
              color: Colors.black,
            ),
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LifeBody(
                neighborhoodLife: neighborhoodLifeList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
