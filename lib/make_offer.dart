import 'package:flutter/material.dart';
import 'package:nested_tab_ui/buttons_list.dart';

class MakeOffer extends StatelessWidget {
  TextEditingController price = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              child: ButtonList(),
            ),
            TextField(),
            RaisedButton(
              child: Text('Offer Price'),
              onPressed: null,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
