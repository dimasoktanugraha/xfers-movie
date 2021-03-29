import 'package:flutter/material.dart';

class BottomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: Center(
                child: CircularProgressIndicator(),
              )
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      );
  }
}